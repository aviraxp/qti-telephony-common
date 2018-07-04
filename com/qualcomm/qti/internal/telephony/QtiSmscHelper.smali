.class public Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;
.super Landroid/os/Handler;
.source "QtiSmscHelper.java"


# static fields
.field private static final EVENT_GET_SMSC:I = 0x2

.field private static final EVENT_SET_SMSC:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSmscHelper"

.field private static final PHONE_COUNT:I


# instance fields
.field private mGetLock:Ljava/lang/Object;

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private mSetLock:Ljava/lang/Object;

.field private final mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    .line 32
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    .line 38
    return-void
.end method

.method private isValidPhoneId(I)Z
    .registers 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 102
    if-ltz p1, :cond_8

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    if-ge p1, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method


# virtual methods
.method public getSmscAddress(I)Ljava/lang/String;
    .registers 7
    .param p1, "slotId"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 86
    const-string/jumbo v1, "QtiSmscHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid phone id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 89
    :cond_22
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_25
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v3, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_41

    .line 93
    :try_start_32
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_37} :catch_44
    .catchall {:try_start_32 .. :try_end_37} :catchall_41

    .line 97
    :goto_37
    :try_start_37
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_41

    monitor-exit v2

    return-object v1

    .line 89
    :catchall_41
    move-exception v1

    monitor-exit v2

    throw v1

    .line 94
    :catch_44
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_37
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 42
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_66

    .line 59
    :goto_a
    return-void

    .line 44
    :pswitch_b
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    if-eqz v0, :cond_46

    :try_start_10
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_46

    .line 46
    const-string/jumbo v1, "QtiSmscHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "smsc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " on phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 49
    :cond_46
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_4d

    :goto_4b
    monitor-exit v2

    goto :goto_a

    .line 44
    :catchall_4d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 53
    :pswitch_50
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    monitor-enter v2

    .line 54
    if-eqz v0, :cond_5a

    :try_start_55
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5a

    const/4 v1, 0x1

    :cond_5a
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    .line 55
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_62

    goto :goto_4b

    .line 53
    :catchall_62
    move-exception v1

    monitor-exit v2

    throw v1

    .line 42
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_50
        :pswitch_b
    .end packed-switch
.end method

.method public setSmscAddress(ILjava/lang/String;)Z
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 62
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 63
    const-string/jumbo v1, "QtiSmscHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid phone id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_23
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_26
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 68
    const-string/jumbo v1, "QtiSmscHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the same smsc is there on phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_6f

    monitor-exit v2

    .line 69
    return v5

    .line 71
    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v3, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_6f

    .line 74
    :try_start_5d
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_62} :catch_72
    .catchall {:try_start_5d .. :try_end_62} :catchall_6f

    .line 79
    :goto_62
    :try_start_62
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 80
    :cond_6b
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z
    :try_end_6d
    .catchall {:try_start_62 .. :try_end_6d} :catchall_6f

    monitor-exit v2

    return v1

    .line 66
    :catchall_6f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 75
    :catch_72
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_62
.end method
