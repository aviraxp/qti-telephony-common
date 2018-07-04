.class Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiCardInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    .line 198
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 202
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 203
    const-string/jumbo v2, "slot"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, "slotId":I
    const-string/jumbo v2, "ss"

    .line 204
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "stateExtra":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " SIM_STATE_CHANGED intent received state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    const-string/jumbo v4, " slotId + "

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;Ljava/lang/String;)V

    .line 209
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_47

    .line 210
    return-void

    .line 213
    :cond_47
    const-string/jumbo v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 214
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-get2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 215
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Z)Z

    .line 216
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-static {v2, v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-wrap1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;I)V

    .line 222
    .end local v0    # "slotId":I
    .end local v1    # "stateExtra":Ljava/lang/String;
    :cond_6f
    :goto_6f
    return-void

    .line 219
    .restart local v0    # "slotId":I
    .restart local v1    # "stateExtra":Ljava/lang/String;
    :cond_70
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$1;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager;)[Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2, v5}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;->-set2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiCardInfoManager$CardInfo;Z)Z

    goto :goto_6f
.end method
