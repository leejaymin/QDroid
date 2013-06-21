.class Lcom/elsdoerfer/keepscore/Setup$5$1;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Setup$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/elsdoerfer/keepscore/Setup$5;

.field private final synthetic val$selectedPlayer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Setup$5;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Setup$5$1;->this$1:Lcom/elsdoerfer/keepscore/Setup$5;

    iput-object p2, p0, Lcom/elsdoerfer/keepscore/Setup$5$1;->val$selectedPlayer:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$5$1;->this$1:Lcom/elsdoerfer/keepscore/Setup$5;

    #getter for: Lcom/elsdoerfer/keepscore/Setup$5;->this$0:Lcom/elsdoerfer/keepscore/Setup;
    invoke-static {v0}, Lcom/elsdoerfer/keepscore/Setup$5;->access$0(Lcom/elsdoerfer/keepscore/Setup$5;)Lcom/elsdoerfer/keepscore/Setup;

    move-result-object v0

    iget-object v0, v0, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup$5$1;->val$selectedPlayer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$5$1;->this$1:Lcom/elsdoerfer/keepscore/Setup$5;

    #getter for: Lcom/elsdoerfer/keepscore/Setup$5;->this$0:Lcom/elsdoerfer/keepscore/Setup;
    invoke-static {v0}, Lcom/elsdoerfer/keepscore/Setup$5;->access$0(Lcom/elsdoerfer/keepscore/Setup$5;)Lcom/elsdoerfer/keepscore/Setup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/Setup;->updateUI()V

    .line 224
    return-void
.end method
