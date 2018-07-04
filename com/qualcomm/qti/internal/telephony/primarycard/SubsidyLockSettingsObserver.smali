.class public Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SubsidyLockSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SIMDeactivationRecords;,
        Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;
    }
.end annotation


# static fields
.field public static final AP_LOCKED:I = 0x66

.field public static final PERMANENTLY_UNLOCKED:I = 0x64

.field public static final SUBSIDY_LOCKED:I = 0x65

.field private static final SUBSIDY_LOCK_SETTINGS:Ljava/lang/String; = "subsidy_status"

.field private static final SUBSIDY_LOCK_SYSTEM_PROPERY:Ljava/lang/String; = "ro.radio.subsidylock"

.field private static final SUBSIDY_STATE_KEY:Ljava/lang/String; = "device_Subsidy_state"

.field public static final SUBSIDY_UNLOCKED:I = 0x67

.field private static final TAG:Ljava/lang/String; = "SubsidyLockSettingsObserver"

.field private static mCurrentState:I


# instance fields
.field private mCardInfoManager:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

.field private mContext:Landroid/content/Context;

.field private mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

.field private mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;)Landroid/content/Context;
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;

    .prologue
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;I)V
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->updateDeviceState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 65
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "device_Subsidy_state"

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    .line 66
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    .line 68
    const-string/jumbo v0, "SubsidyLockSettingsObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " in constructor, context =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " device state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static isPermanentlyUnlocked(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 125
    const-string/jumbo v2, "subsidy_status"

    const/4 v3, -0x1

    .line 123
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "subsidyLock":I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static isSubsidyLockFeatureEnabled()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    const-string/jumbo v3, "ro.radio.subsidylock"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, "propVal":I
    if-ne v0, v1, :cond_c

    :goto_b
    return v1

    :cond_c
    move v1, v2

    goto :goto_b
.end method

.method public static isSubsidyLocked(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 111
    const-string/jumbo v3, "subsidy_status"

    const/4 v4, -0x1

    .line 109
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "subsidyLock":I
    const/16 v2, 0x65

    if-eq v0, v2, :cond_15

    const/16 v2, 0x66

    if-ne v0, v2, :cond_16

    :cond_15
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static isSubsidyUnlocked(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 118
    const-string/jumbo v2, "subsidy_status"

    const/4 v3, -0x1

    .line 116
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "subsidyLock":I
    const/16 v1, 0x67

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private registerAllCardsAvailableCallback()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    if-nez v0, :cond_18

    .line 83
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCardInfoManager:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    .line 85
    const/4 v2, 0x4

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->registerAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 87
    :cond_18
    return-void
.end method

.method private saveDeviceState(I)V
    .registers 4
    .param p1, "newState"    # I

    .prologue
    .line 309
    sput p1, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    .line 310
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    const-string/jumbo v1, "device_Subsidy_state"

    .line 310
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    return-void
.end method

.method private updateDeviceState(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0x64

    .line 282
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    if-eq v0, p1, :cond_4e

    .line 283
    const-string/jumbo v0, "SubsidyLockSettingsObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " updateDeviceState, new state  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eq p1, v3, :cond_26

    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    if-ne v0, v3, :cond_35

    .line 290
    :cond_26
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    if-eqz v0, :cond_35

    .line 291
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->reloadPriorityConfig()V

    .line 292
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loadCurrentPriorityConfigs(Z)V

    .line 295
    :cond_35
    sget v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCurrentState:I

    if-ne v0, v3, :cond_4f

    .line 296
    const/16 v0, 0x66

    if-eq p1, v0, :cond_41

    const/16 v0, 0x67

    if-ne p1, v0, :cond_4f

    .line 299
    :cond_41
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mSettingsHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    .line 300
    const/4 v1, 0x5

    .line 299
    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 304
    :cond_4b
    :goto_4b
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->saveDeviceState(I)V

    .line 306
    :cond_4e
    return-void

    .line 301
    :cond_4f
    if-ne p1, v3, :cond_4b

    .line 302
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->getInstance()Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->saveUserSelectionMode()V

    goto :goto_4b
.end method


# virtual methods
.method public observe(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;)V
    .registers 6
    .param p1, "cardInfoManager"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
    .param p2, "cardPriorityHandler"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, "resolver":Landroid/content/ContentResolver;
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mCardInfoManager:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 75
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    .line 77
    const-string/jumbo v1, "subsidy_status"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->registerAllCardsAvailableCallback()V

    .line 79
    return-void
.end method

.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    if-eqz v2, :cond_f

    .line 92
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->reloadPriorityConfig()V

    .line 93
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mPriorityHandler:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardPriorityHandler;->loadCurrentPriorityConfigs(Z)V

    .line 95
    :cond_f
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Subsidy Settings handler thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver$SubsidySettingsHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;Landroid/os/Looper;)V

    .line 98
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 99
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 106
    :cond_33
    :goto_33
    return-void

    .line 100
    :cond_34
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isPermanentlyUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 101
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_33

    .line 102
    :cond_45
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/SubsidyLockSettingsObserver;->isSubsidyUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 104
    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_33
.end method
