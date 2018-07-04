.class Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;
.super Ljava/lang/Object;
.source "QtiRilInterface.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public declared-synchronized onQcRilHookDisconnected()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 84
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-set0(Z)Z

    .line 85
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v2, "Service disconnected, notifying registrants"

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-get3()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 88
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-get4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 89
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-set1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2b

    monitor-exit p0

    .line 90
    return-void

    .end local v0    # "ar":Landroid/os/AsyncResult;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onQcRilHookReady()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-set0(Z)Z

    .line 77
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const-string/jumbo v2, "Service ready, notifying registrants"

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-wrap4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/os/AsyncResult;

    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-get3()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 80
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->-get4(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 81
    return-void
.end method
