.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnSubscribeRequest"
.end annotation


# static fields
.field public static final PEER_URI_TYPE:S = 0x1s


# instance fields
.field peerURI:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "peerURI"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 239
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;->peerURI:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    .line 240
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .registers 4

    .prologue
    .line 244
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 245
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnSubscribe$UnSubscribeRequest;->peerURI:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 244
    return-object v0
.end method

.method public getTypes()[S
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 251
    new-array v0, v2, [S

    .line 252
    const/4 v1, 0x0

    aput-short v2, v0, v1

    .line 251
    return-object v0
.end method
