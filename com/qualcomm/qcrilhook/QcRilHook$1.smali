.class Lcom/qualcomm/qcrilhook/QcRilHook$1;
.super Landroid/content/BroadcastReceiver;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/QcRilHook;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 131
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v12, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e7

    .line 136
    const/4 v11, 0x0

    .line 137
    .local v11, "response_id":I
    iget-object v12, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    const-string/jumbo v13, "Received Broadcast Intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v12, v13}, Lcom/qualcomm/qcrilhook/QcRilHook;->-wrap0(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v12, "payload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 141
    .local v7, "payload":[B
    const-string/jumbo v12, "INSTANCE_ID"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 143
    .local v3, "instanceId":I
    if-eqz v7, :cond_e6

    .line 145
    array-length v12, v7

    iget-object v13, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v13}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get0(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v13

    if-ge v12, v13, :cond_71

    .line 146
    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    const-string/jumbo v13, "UNSOL_RESPONSE_OEM_HOOK_RAW incomplete header"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Expected "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v14}, Lcom/qualcomm/qcrilhook/QcRilHook;->-get0(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " bytes. Received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 148
    array-length v14, v7

    .line 147
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 148
    const-string/jumbo v14, " bytes."

    .line 147
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 151
    :cond_71
    invoke-static {v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 152
    .local v10, "response":Ljava/nio/ByteBuffer;
    const-string/jumbo v12, "QOEMHOOK"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-array v5, v12, [B

    .line 153
    .local v5, "oem_id_bytes":[B
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 154
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 155
    .local v6, "oem_id_str":Ljava/lang/String;
    iget-object v12, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Oem ID in QCRILHOOK UNSOL RESP is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/qcrilhook/QcRilHook;->-wrap0(Lcom/qualcomm/qcrilhook/QcRilHook;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v12, "QOEMHOOK"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c3

    .line 157
    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Incorrect Oem ID in QCRILHOOK UNSOL RESP. Expected QOEMHOOK. Received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_c3
    array-length v12, v7

    const-string/jumbo v13, "QOEMHOOK"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v9, v12, v13

    .line 163
    .local v9, "remainingSize":I
    if-lez v9, :cond_e6

    .line 164
    new-array v8, v9, [B

    .line 166
    .local v8, "remainingPayload":[B
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 167
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 168
    .local v4, "msg":Landroid/os/Message;
    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 175
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v2, v12, v4, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 176
    .local v2, "ar":Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 183
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "instanceId":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "oem_id_bytes":[B
    .end local v6    # "oem_id_str":Ljava/lang/String;
    .end local v7    # "payload":[B
    .end local v8    # "remainingPayload":[B
    .end local v9    # "remainingSize":I
    .end local v10    # "response":Ljava/nio/ByteBuffer;
    .end local v11    # "response_id":I
    :cond_e6
    :goto_e6
    return-void

    .line 181
    :cond_e7
    const-string/jumbo v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Received Unknown Intent: action = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6
.end method
