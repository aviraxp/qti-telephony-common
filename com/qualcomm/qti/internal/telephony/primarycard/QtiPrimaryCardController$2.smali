.class Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;
.super Ljava/lang/Object;
.source "QtiPrimaryCardController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->handleSetNwModeDone(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->-get1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->-get0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 223
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    const-string/jumbo v1, "Retrying setPrimaryCardIfRequired request"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->-wrap2(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;ZZ)V

    .line 229
    :goto_1d
    return-void

    .line 226
    :cond_1e
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    const-string/jumbo v1, "Primary card slot changed, skip retry"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->-wrap0(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;->-wrap1(Lcom/qualcomm/qti/internal/telephony/primarycard/QtiPrimaryCardController;)V

    goto :goto_1d
.end method
