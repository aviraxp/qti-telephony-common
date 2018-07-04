.class public Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;
.super Ljava/lang/Object;
.source "SimulatedQtiRilInterface.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimulatedQtiRilInterface"

.field private static mIsServiceReady:Z

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;


# instance fields
.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mServiceReadyRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mIsServiceReady:Z

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string/jumbo v0, " in constructor "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->logd(Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    monitor-enter v1

    .line 33
    :try_start_3
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    .line 39
    :goto_e
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2f

    monitor-exit v1

    return-object v0

    .line 36
    :cond_12
    :try_start_12
    const-string/jumbo v0, "SimulatedQtiRilInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "instance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2f

    goto :goto_e

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "SimulatedQtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method


# virtual methods
.method public getOmhCallProfile(ILandroid/os/Message;I)V
    .registers 8
    .param p1, "modemApnType"    # I
    .param p2, "callbackMsg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getOmhCallProfile, modemApnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->logd(Ljava/lang/String;)V

    .line 49
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 50
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 52
    return-void
.end method

.method public isServiceReady()Z
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 65
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 66
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 67
    new-instance v1, Landroid/os/AsyncResult;

    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mIsServiceReady:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 69
    :cond_1f
    return-void
.end method

.method public sendPhoneStatus(II)V
    .registers 5
    .param p1, "isReady"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendPhoneStatus, isReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->logd(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setLocalCallHold(IZ)Z
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public unRegisterForServiceReadyEvent(Landroid/os/Handler;)V
    .registers 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 73
    return-void
.end method
