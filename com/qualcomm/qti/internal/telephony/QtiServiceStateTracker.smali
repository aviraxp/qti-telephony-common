.class public Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "QtiServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiServiceStateTracker"

.field private static final VDBG:Z


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRac:I

.field private final mRacChange:Ljava/lang/String;

.field private mRat:I

.field private final mRatInfo:Ljava/lang/String;

.field private mTac:I


# direct methods
.method static synthetic -set0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I
    .registers 2
    .param p0, "-this"    # Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRat:I

    return p1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 6
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 36
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "rat"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRatInfo:Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "rac"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mRacChange:Ljava/lang/String;

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mTac:I

    .line 43
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method


# virtual methods
.method public getPollingContext()[I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPollingContext:[I

    return-object v0
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_8e

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 100
    :cond_6
    :goto_6
    return-void

    .line 67
    :pswitch_7
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    .line 68
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 69
    iget-object v4, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/radio/V1_0/VoiceRegStateResult;

    .line 70
    .local v4, "voiceRegStateResult":Landroid/hardware/radio/V1_0/VoiceRegStateResult;
    iget v2, v4, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->regState:I

    .line 72
    .local v2, "regState":I
    const/4 v5, 0x3

    if-eq v2, v5, :cond_1f

    const/16 v5, 0xd

    if-ne v2, v5, :cond_6

    .line 73
    :cond_1f
    iget v3, v4, Landroid/hardware/radio/V1_0/VoiceRegStateResult;->reasonForDenial:I

    .line 75
    .local v3, "rejCode":I
    const/16 v5, 0xa

    if-ne v3, v5, :cond_6

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " Posting Managed roaming intent sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 77
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->log(Ljava/lang/String;)V

    .line 80
    :try_start_42
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    .line 82
    const-string/jumbo v6, "com.qualcomm.qti.networksetting"

    .line 83
    const-string/jumbo v7, "com.qualcomm.qti.networksetting.ManagedRoaming"

    .line 81
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    const-string/jumbo v5, "subscription"

    .line 86
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    .line 85
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_72
    .catch Landroid/content/ActivityNotFoundException; {:try_start_42 .. :try_end_72} :catch_73

    goto :goto_6

    .line 88
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_73
    move-exception v0

    .line 89
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to start activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 65
    nop

    :pswitch_data_8e
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method
