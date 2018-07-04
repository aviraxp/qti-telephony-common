.class public Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;
.super Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;
.source "QtiRadioResponse.java"


# static fields
.field static final QTI_RILJ_LOG_TAG:Ljava/lang/String; = "QtiRadioResponse"


# instance fields
.field mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .registers 2
    .param p1, "ril"    # Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .prologue
    .line 26
    invoke-direct {p0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadioResponse$Stub;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    .line 28
    return-void
.end method

.method private responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiProcessResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "request":Ljava/lang/Object;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiGetMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 54
    .local v1, "result":Landroid/os/Message;
    if-eqz v1, :cond_1a

    .line 55
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_15

    .line 56
    invoke-static {v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 58
    :cond_15
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->mRil:Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    invoke-virtual {v2, v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->qtiProcessResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 60
    :cond_1a
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 36
    if-eqz p0, :cond_9

    .line 37
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    :cond_9
    return-void
.end method

.method static toRadioResponseInfo(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .registers 3
    .param p0, "qtiResponseInfo"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;

    .prologue
    .line 44
    new-instance v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_0/RadioResponseInfo;-><init>()V

    .line 45
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->type:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    .line 46
    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->serial:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    .line 47
    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;->error:I

    iput v1, v0, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 48
    return-object v0
.end method


# virtual methods
.method public getAtrResponse(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "qtiResponseInfo"    # Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;
    .param p2, "atr"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string/jumbo v1, "QtiRadioResponse"

    const-string/jumbo v2, "getAtrResponse"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->toRadioResponseInfo(Lvendor/qti/hardware/radio/qtiradio/V1_0/QtiRadioResponseInfo;)Landroid/hardware/radio/V1_0/RadioResponseInfo;

    move-result-object v0

    .line 71
    .local v0, "responseInfo":Landroid/hardware/radio/V1_0/RadioResponseInfo;
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 72
    return-void
.end method
