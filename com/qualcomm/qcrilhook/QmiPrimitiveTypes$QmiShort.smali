.class public Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiPrimitiveTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiShort"
.end annotation


# instance fields
.field private mVal:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->mVal:S

    .line 131
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 135
    :try_start_3
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->mVal:S
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    .line 139
    return-void

    .line 136
    :catch_a
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 142
    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_d

    .line 143
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-direct {v1}, Ljava/security/InvalidParameterException;-><init>()V

    throw v1

    .line 145
    :cond_d
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->mVal:S

    .line 147
    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x2

    return v0
.end method

.method public toByteArray()[B
    .registers 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->mVal:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toInt()I
    .registers 2

    .prologue
    .line 150
    iget-short v0, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->mVal:S

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 158
    const-string/jumbo v0, "val=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;->mVal:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
