.class public Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.super Landroid/os/Handler;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;,
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;,
        Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_MANUAL_PROVISION_STATE_CHANGED:I = 0x1

.field private static final EVENT_READ_EF_HPLMNWACT_DONE:I = 0x2

.field private static final EVENT_SUBINFO_RECORD_ADDED:I = 0x4

.field private static final HPLMN_SEL_DATA_LEN:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "QtiPcCardInfoManager"

.field static final PHONE_COUNT:I

.field private static final UPDATE_CARDTYPE_COMPLETED:I = 0x2

.field private static final UPDATE_CARDTYPE_INIT:I = 0x0

.field private static final UPDATE_CARDTYPE_IN_PROGRESS:I = 0x1

.field private static final UPDATE_CARDTYPE_NOT_NEEDED:I = 0x3

.field private static final VDBG:Z

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;


# instance fields
.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

.field private mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;I)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    .line 156
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    new-array v2, v2, [Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    .line 198
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 178
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    .line 179
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1c
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v1, v2, :cond_36

    .line 180
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    invoke-direct {v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;-><init>()V

    aput-object v3, v2, v1

    .line 181
    aget-object v2, p2, v1

    .line 182
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 181
    invoke-interface {v2, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 184
    :cond_36
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 185
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v2, p0, v5, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->registerForManualProvisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    .line 190
    const/4 v3, 0x4

    .line 189
    invoke-virtual {v2, p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->registerForAddSubscriptionRecord(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_67
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .registers 3

    .prologue
    .line 168
    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    monitor-enter v1

    .line 169
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    if-nez v0, :cond_13

    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "QtiCardInfoManager was not initialized!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 168
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    .line 172
    :cond_13
    :try_start_13
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_10

    monitor-exit v1

    return-object v0
.end method

.method static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 159
    const-class v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    monitor-enter v1

    .line 160
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    if-nez v0, :cond_e

    .line 161
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    :cond_e
    monitor-exit v1

    .line 164
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->sInstance:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    return-object v0

    .line 159
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isSubsidyRestricted()Z
    .registers 2

    .prologue
    .line 372
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 373
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 372
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isUpdateCardInfoRequired(ILjava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "currIccId"    # Ljava/lang/String;
    .param p3, "currProvState"    # I
    .param p4, "currMccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 382
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->isSubsidyRestricted()Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p4, :cond_27

    .line 383
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 381
    if-nez v0, :cond_31

    .line 384
    :cond_27
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get4(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    if-eq p3, v0, :cond_33

    .line 388
    :cond_31
    const/4 v0, 0x1

    return v0

    .line 385
    :cond_33
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    if-eqz v0, :cond_31

    .line 386
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->UNKNOWN:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    if-ne v0, v1, :cond_54

    .line 387
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    .line 390
    :cond_54
    return v2
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 493
    const-string/jumbo v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string/jumbo v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 497
    const-string/jumbo v0, "QtiPcCardInfoManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method private notifyAllCardsInfoAvailableIfNeeded()V
    .registers 4

    .prologue
    .line 479
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v1, :cond_2a

    .line 480
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardInfoAvailable(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " card info not available "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 482
    return-void

    .line 479
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    :cond_2a
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 486
    return-void
.end method

.method private onEfLoaded(Landroid/os/AsyncResult;)V
    .registers 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 447
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 448
    .local v3, "slotId":I
    const-string/jumbo v4, "onEfLoaded: Started"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 450
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_61

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EF_HPLMNWACT read with exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 465
    :cond_2b
    :goto_2b
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v4, v4, v3

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 466
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEfLoaded("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : mCardType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 468
    return-void

    .line 453
    :cond_61
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 454
    .local v0, "data":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 455
    array-length v4, v0

    div-int/lit8 v2, v4, 0x5

    .line 456
    .local v2, "numRec":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number of Records="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 458
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9b
    if-ge v1, v2, :cond_2b

    .line 459
    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_b2

    .line 460
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v4, v4, v3

    sget-object v5, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_4G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v4, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    goto/16 :goto_2b

    .line 458
    :cond_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_9b
.end method

.method private onIccChanged(Landroid/os/AsyncResult;)V
    .registers 3
    .param p1, "iccChangedResult"    # Landroid/os/AsyncResult;

    .prologue
    .line 273
    if-eqz p1, :cond_11

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 274
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    .line 276
    :cond_11
    return-void
.end method

.method private onManualProvisionStateChanged(Landroid/os/AsyncResult;)V
    .registers 4
    .param p1, "manualProvisionResult"    # Landroid/os/AsyncResult;

    .prologue
    .line 279
    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_11

    .line 281
    :cond_6
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_7
    sget v1, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1c

    .line 282
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 285
    .end local v0    # "index":I
    :cond_11
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    .line 287
    :cond_1c
    return-void
.end method

.method private onSubscriptionInfoChanged(Landroid/os/AsyncResult;)V
    .registers 3
    .param p1, "subInfoChange"    # Landroid/os/AsyncResult;

    .prologue
    .line 267
    if-eqz p1, :cond_11

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_11

    .line 268
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateCardInfo(I)V

    .line 270
    :cond_11
    return-void
.end method

.method private updateCardInfo(I)V
    .registers 12
    .param p1, "slotId"    # I

    .prologue
    const/4 v9, 0x1

    .line 290
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v7, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2

    .line 291
    .local v2, "currProvState":I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mQtiCardProvisioner:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-virtual {v7, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "currIccId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 293
    .local v1, "currMccMnc":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCardInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: Start!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioInValidState()Z

    move-result v7

    if-nez v7, :cond_55

    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCardInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: Radio is in Invalid State, IGNORE!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    .line 299
    return-void

    .line 305
    :cond_55
    if-ne v9, v2, :cond_e5

    .line 306
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 308
    .local v6, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v6, :cond_67

    .line 309
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v7

    if-nez v7, :cond_86

    .line 310
    :cond_67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCardInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: card not READY!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    .line 311
    return-void

    .line 314
    :cond_86
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .line 315
    .local v4, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 316
    .local v5, "subId":I
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v7

    if-nez v7, :cond_b3

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCardInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: subId not added yet!! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    .line 318
    return-void

    .line 323
    :cond_b3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLockFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 324
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 326
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_e5

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .end local v1    # "currMccMnc":Ljava/lang/String;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v5    # "subId":I
    .end local v6    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_e5
    const/4 v7, -0x1

    if-ne v2, v7, :cond_14b

    .line 340
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    .line 341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCardInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: ProvStatus is Invalid, reset cardInfo!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 366
    :cond_10d
    :goto_10d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCardInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: Exit! - UpdateCardTypeState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v8, v8, p1

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 367
    const-string/jumbo v8, ", mCardType: "

    .line 366
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 367
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v8, v8, p1

    invoke-static {v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    move-result-object v8

    .line 366
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logi(Ljava/lang/String;)V

    .line 368
    return-void

    .line 343
    :cond_14b
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->isUpdateCardInfoRequired(ILjava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10d

    .line 344
    const/4 v7, -0x2

    if-ne v2, v7, :cond_18c

    .line 346
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    .line 347
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    invoke-static {v7, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set4(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 348
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCardInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: CardAbsent!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    goto :goto_10d

    .line 353
    :cond_18c
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)V

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCardInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: Query current state is required!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 355
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    invoke-static {v7, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    invoke-static {v7, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set3(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    invoke-static {v7, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set4(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 358
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->updateUiccCardType(I)Z

    move-result v7

    if-eqz v7, :cond_10d

    .line 359
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v7, v7, p1

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 360
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->notifyAllCardsInfoAvailableIfNeeded()V

    goto/16 :goto_10d
.end method

.method private updateUiccCardType(I)Z
    .registers 10
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x1

    .line 408
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 409
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 411
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v5, v6, :cond_20

    .line 412
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_2G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 433
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1f
    :goto_1f
    return v7

    .line 414
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_20
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardUtils;->read4gFlag()Z

    move-result v3

    .line 415
    .local v3, "read4gEf":Z
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    sget-object v6, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;->CARDTYPE_3G:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    invoke-static {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardType;

    .line 416
    if-eqz v3, :cond_1f

    .line 417
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v2

    .line 419
    .local v2, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get4(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)I

    move-result v5

    if-ne v5, v7, :cond_1f

    .line 421
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v5, v5, p1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set5(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;I)I

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {p0, v6, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 422
    const/16 v6, 0x6f62

    invoke-virtual {v2, v6, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_55

    .line 424
    const/4 v5, 0x0

    return v5

    .line 428
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v3    # "read4gEf":Z
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :catch_55
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "For slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Exception while updateUiccCardType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->loge(Ljava/lang/String;)V

    goto :goto_1f
.end method


# virtual methods
.method public getCardInfo(I)Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;
    .registers 3
    .param p1, "slotId"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 264
    :goto_5
    return-void

    .line 248
    :pswitch_6
    const-string/jumbo v0, "on EVENT_MANUAL_PROVISION_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onManualProvisionStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 252
    :pswitch_14
    const-string/jumbo v0, "on EVENT_READ_EF_HPLMNWACT_DONE"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 253
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onEfLoaded(Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 256
    :pswitch_22
    const-string/jumbo v0, "on EVENT_ICC_CHANGED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 260
    :pswitch_30
    const-string/jumbo v0, "on EVENT_SUBINFO_RECORD_ADDED"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->logd(Ljava/lang/String;)V

    .line 261
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->onSubscriptionInfoChanged(Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 246
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_14
        :pswitch_22
        :pswitch_30
    .end packed-switch
.end method

.method public registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 226
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    .local v1, "r":Landroid/os/Registrant;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v3

    .line 228
    :try_start_8
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 229
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_e
    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->PHONE_COUNT:I

    if-ge v0, v2, :cond_21

    .line 230
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mCardInfos:[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->isCardInfoAvailable(I)Z
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_26

    move-result v2

    if-nez v2, :cond_1e

    monitor-exit v3

    .line 231
    return-void

    .line 229
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 234
    :cond_21
    :try_start_21
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_26

    monitor-exit v3

    .line 236
    return-void

    .line 227
    .end local v0    # "index":I
    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterAllCardsInfoAvailable(Landroid/os/Handler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 240
    :try_start_3
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 242
    return-void

    .line 239
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
