.class Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2b

    .line 49
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    const-string/jumbo v2, "rac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->-set0(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I

    .line 50
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    const-string/jumbo v2, "rat"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;->-set1(Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;I)I

    .line 53
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2b
    return-void
.end method
