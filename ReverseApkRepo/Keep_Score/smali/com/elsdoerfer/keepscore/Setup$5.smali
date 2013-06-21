.class Lcom/elsdoerfer/keepscore/Setup$5;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Setup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Setup;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Setup;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Setup$5;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iput-object p2, p0, Lcom/elsdoerfer/keepscore/Setup$5;->val$context:Landroid/content/Context;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/elsdoerfer/keepscore/Setup$5;)Lcom/elsdoerfer/keepscore/Setup;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$5;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/elsdoerfer/keepscore/Setup$5;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    iget-object v1, v1, Lcom/elsdoerfer/keepscore/Setup;->mListOfPlayersAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, selectedPlayer:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$5;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Setup$5;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    invoke-virtual {v2}, Lcom/elsdoerfer/keepscore/Setup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 220
    const v2, 0x7f050002

    new-instance v3, Lcom/elsdoerfer/keepscore/Setup$5$1;

    invoke-direct {v3, p0, v0}, Lcom/elsdoerfer/keepscore/Setup$5$1;-><init>(Lcom/elsdoerfer/keepscore/Setup$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 226
    const v2, 0x7f050003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 228
    return-void
.end method
