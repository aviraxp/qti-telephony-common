.class public Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;
.super Lcom/android/internal/telephony/TelephonyComponentFactory;
.source "QtiTelephonyComponentFactory.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mSmsSecurityService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string/jumbo v0, "QtiTelephonyComponentFactory"

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    .line 43
    return-void
.end method

.method private declared-synchronized getSmsSecurityService(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mSmsSecurityService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    if-nez v0, :cond_14

    .line 193
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mSmsSecurityService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    .line 194
    const-string/jumbo v0, "sms-sec"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mSmsSecurityService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 196
    :cond_14
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->mSmsSecurityService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "what"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    .prologue
    .line 134
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCdmaSubscriptionSourceManagerInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIDeviceIdleController()Landroid/os/IDeviceIdleController;
    .registers 3

    .prologue
    .line 140
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "getIDeviceIdleController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v0

    return-object v0
.end method

.method public initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionController;
    .registers 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 155
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "initSubscriptionController"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    return-object v0
.end method

.method public makeDcTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 71
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeQtiDcTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;
    .registers 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeEriManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;

    move-result-object v0

    return-object v0
.end method

.method public makeExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "commandsInterfaces"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 169
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, " makeExtTelephonyClasses "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 171
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;->make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiDepersoSupplier;

    .line 172
    invoke-static {p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    .line 173
    invoke-static {p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 175
    :try_start_14
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    :try_end_17
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_14 .. :try_end_17} :catch_18

    .line 180
    :goto_17
    return-void

    .line 176
    :catch_18
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 178
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error creating ExtTelephonyServiceImpl"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    .prologue
    .line 47
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeGsmCdmaCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeIccCardProxy(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/IccCardProxy;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    .prologue
    .line 89
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeIccCardProxy"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccCardProxy(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 77
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeQtiIccPhoneBookInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 83
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeIccSmsInterfaceManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .registers 4
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 126
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeImsPhoneCallTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 15
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "displayAddr"    # Ljava/lang/String;
    .param p8, "referenceNumber"    # I
    .param p9, "sequenceNumber"    # I
    .param p10, "messageCount"    # I
    .param p11, "is3gpp2WapPdu"    # Z
    .param p12, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super/range {p0 .. p12}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .registers 12
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "displayAddr"    # Ljava/lang/String;
    .param p9, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeInboundSmsTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super/range {p0 .. p9}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v0

    return-object v0
.end method

.method public makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)Lcom/android/internal/telephony/Phone;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .prologue
    .line 148
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makePhone"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V

    return-object v0
.end method

.method public makePhoneSwitcher(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneSwitcher;
    .registers 18
    .param p1, "maxActivePhones"    # I
    .param p2, "numPhones"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sc"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "tr"    # Lcom/android/internal/telephony/ITelephonyRegistry;
    .param p7, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p8, "phones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 186
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeQtiPhoneSwitcher"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;-><init>(IILandroid/content/Context;Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Looper;Lcom/android/internal/telephony/ITelephonyRegistry;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    return-object v0
.end method

.method public makeRIL(Landroid/content/Context;IILjava/lang/Integer;)Lcom/android/internal/telephony/RIL;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 202
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeQtiRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-object v0
.end method

.method public makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .registers 5
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 65
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeQtiServiceStateTracker"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    invoke-direct {v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    return-object v0
.end method

.method public makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .registers 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 53
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeSmsStorageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;

    move-result-object v0

    return-object v0
.end method

.method public makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeSmsUsageMonitor"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor;

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getSmsSecurityService(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor;-><init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;)V

    return-object v0
.end method

.method public makeSubscriptionInfoUpdater(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phones"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 162
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeSubscriptionInfoUpdater"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->init(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v0

    return-object v0
.end method

.method public makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .registers 4
    .param p1, "pdu"    # [B

    .prologue
    .line 101
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "makeWspTypeDecoder"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-super {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;

    move-result-object v0

    return-object v0
.end method
