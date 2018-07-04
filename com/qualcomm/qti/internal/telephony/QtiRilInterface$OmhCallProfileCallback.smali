.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmhCallProfileCallback"
.end annotation


# instance fields
.field mAppMessage:Landroid/os/Message;

.field mModemApnType:I

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;ILandroid/os/Message;)V
    .registers 4
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .param p2, "modemApnType"    # I
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 184
    invoke-direct {p0, p3}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 185
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    .line 186
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mModemApnType:I

    .line 187
    return-void
.end method


# virtual methods
.method public onOemHookResponse([BI)V
    .registers 9
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Ljava/lang/String;

    move-result-object v2

    .line 193
    const/4 v3, 0x0

    .line 192
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 195
    .local v0, "fakeResponse":Z
    if-eqz v0, :cond_2e

    .line 196
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v3, "Getting fake omh profiles"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap5(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mModemApnType:I

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-static {v2, v1, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 209
    :goto_28
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 210
    return-void

    .line 200
    :cond_2e
    if-eqz p1, :cond_5a

    .line 201
    const-string/jumbo v2, "QtiRilInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOmhCallProfile: onOemHookResponse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap3(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[B)Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-static {v2, v1, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_28

    .line 205
    :cond_5a
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    .line 206
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "QCRIL_EVT_HOOK_GET_OMH_CALL_PROFILE failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-static {v2, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_28
.end method
