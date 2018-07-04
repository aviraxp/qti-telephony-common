.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateChangeInfo"
.end annotation


# instance fields
.field public ifIndex:I

.field public ipAddress:Ljava/lang/String;

.field public state:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 984
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->state:I

    .line 986
    iput-object p3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->ipAddress:Ljava/lang/String;

    .line 987
    iput p4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->ifIndex:I

    .line 988
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    :goto_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 993
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    .line 994
    .local v3, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 996
    .local v2, "length":I
    packed-switch v3, :pswitch_data_bc

    .line 1014
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "StateChangeInfo: Unexpected Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 998
    :pswitch_3a
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->state:I

    .line 999
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1002
    :pswitch_5e
    new-array v0, v2, [B

    .line 1003
    .local v0, "address":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_61
    if-ge v1, v2, :cond_6c

    .line 1004
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v0, v1

    .line 1003
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 1006
    :cond_6c
    new-instance v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v4, v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>([B)V

    invoke-virtual {v4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->ipAddress:Ljava/lang/String;

    .line 1007
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ip Address = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1010
    .end local v0    # "address":[B
    .end local v1    # "i":I
    :pswitch_96
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->ifIndex:I

    .line 1011
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;->ifIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1018
    .end local v2    # "length":I
    .end local v3    # "type":I
    :cond_bb
    return-void

    .line 996
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_5e
        :pswitch_96
    .end packed-switch
.end method
