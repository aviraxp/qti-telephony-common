.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaiIndication"
.end annotation


# instance fields
.field public availableSaiList:[I

.field public campedSaiList:[I

.field public numSaiPerGroupList:[I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V
    .registers 13
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    .line 1245
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    iput-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    .line 1241
    iput-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    .line 1242
    iput-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    .line 1243
    const/4 v7, 0x0

    iput v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    .line 1247
    :goto_f
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_112

    .line 1249
    :try_start_15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 1250
    .local v6, "type":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 1251
    .local v3, "length":S
    const/4 v4, 0x0

    .line 1254
    .local v4, "list":[I
    packed-switch v6, :pswitch_data_114

    .line 1289
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SaiIndication: Unexpected Type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_15 .. :try_end_3c} :catch_3d

    goto :goto_f

    .line 1292
    .end local v3    # "length":S
    .end local v4    # "list":[I
    .end local v6    # "type":I
    :catch_3d
    move-exception v1

    .line 1293
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Unexpected buffer format when parsing for SaiIndication"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1256
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v3    # "length":S
    .restart local v4    # "list":[I
    .restart local v6    # "type":I
    :pswitch_49
    :try_start_49
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 1257
    .local v5, "listLength":B
    new-array v4, v5, [I

    .line 1258
    .local v4, "list":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_50
    if-ge v2, v5, :cond_5b

    .line 1259
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v2

    .line 1258
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1261
    :cond_5b
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    .line 1262
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Camped list = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->campedSaiList:[I

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1265
    .end local v2    # "i":I
    .end local v5    # "listLength":B
    .local v4, "list":[I
    :pswitch_7f
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 1266
    .restart local v5    # "listLength":B
    new-array v4, v5, [I

    .line 1267
    .local v4, "list":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_86
    if-ge v2, v5, :cond_91

    .line 1268
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v2

    .line 1267
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 1270
    :cond_91
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    .line 1271
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Number of SAI per group list = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1272
    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->numSaiPerGroupList:[I

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    .line 1271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1275
    .end local v2    # "i":I
    .end local v5    # "listLength":B
    .local v4, "list":[I
    :pswitch_b6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 1276
    .local v0, "availableLength":S
    new-array v4, v0, [I

    .line 1277
    .local v4, "list":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_bd
    if-ge v2, v0, :cond_c8

    .line 1278
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v2

    .line 1277
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 1280
    :cond_c8
    iput-object v4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    .line 1281
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Available SAI list = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1282
    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->availableSaiList:[I

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    .line 1281
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1285
    .end local v0    # "availableLength":S
    .end local v2    # "i":I
    .local v4, "list":[I
    :pswitch_ed
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    iput v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    .line 1286
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "traceId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;->traceId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/nio/BufferUnderflowException; {:try_start_49 .. :try_end_110} :catch_3d

    goto/16 :goto_f

    .line 1296
    .end local v3    # "length":S
    .end local v4    # "list":[I
    .end local v6    # "type":I
    :cond_112
    return-void

    .line 1254
    nop

    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_ed
        :pswitch_49
        :pswitch_7f
        :pswitch_b6
    .end packed-switch
.end method
