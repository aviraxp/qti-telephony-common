.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoTlvPayloadRequest"
.end annotation


# static fields
.field public static final IMS_ENABLER_REQ_TYPE:S = 0x1s


# instance fields
.field noParam:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;->noParam:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;

    .line 29
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .registers 4

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 34
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$NoTlvPayloadRequest;->noParam:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 33
    return-object v0
.end method

.method public getTypes()[S
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 40
    new-array v0, v2, [S

    .line 41
    const/4 v1, 0x0

    aput-short v2, v0, v1

    .line 40
    return-object v0
.end method