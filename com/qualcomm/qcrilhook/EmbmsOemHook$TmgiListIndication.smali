.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TmgiListIndication"
.end annotation


# instance fields
.field public code:I

.field public list:[B

.field public sessions:[B

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V
    .registers 10
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "msgId"    # S

    .prologue
    const/4 v4, 0x0

    .line 1069
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->list:[B

    .line 1065
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->sessions:[B

    .line 1066
    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->traceId:I

    .line 1067
    iput v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->code:I

    .line 1071
    :goto_11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 1073
    :try_start_17
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v2

    .line 1074
    .local v2, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v1

    .line 1076
    .local v1, "length":I
    sparse-switch v2, :sswitch_data_cc

    .line 1098
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TmgiListIndication: Unexpected Type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/nio/BufferUnderflowException; {:try_start_17 .. :try_end_45} :catch_46

    goto :goto_11

    .line 1101
    .end local v1    # "length":I
    .end local v2    # "type":I
    :catch_46
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Invalid format of byte buffer received in TmgiListIndication"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1081
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "length":I
    .restart local v2    # "type":I
    :sswitch_52
    const/4 v3, 0x4

    if-eq p3, v3, :cond_58

    .line 1082
    const/4 v3, 0x5

    if-ne p3, v3, :cond_7c

    .line 1083
    :cond_58
    :try_start_58
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->code:I

    .line 1084
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "response code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1089
    :cond_7c
    :sswitch_7c
    invoke-static {p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap1(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->list:[B

    .line 1090
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tmgiArray = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->list:[B

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1094
    :sswitch_a5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->traceId:I

    .line 1095
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "traceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;->traceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/nio/BufferUnderflowException; {:try_start_58 .. :try_end_c8} :catch_46

    goto/16 :goto_11

    .line 1105
    .end local v1    # "length":I
    .end local v2    # "type":I
    :cond_ca
    return-void

    .line 1076
    nop

    :sswitch_data_cc
    .sparse-switch
        0x1 -> :sswitch_a5
        0x2 -> :sswitch_52
        0x10 -> :sswitch_7c
    .end sparse-switch
.end method
