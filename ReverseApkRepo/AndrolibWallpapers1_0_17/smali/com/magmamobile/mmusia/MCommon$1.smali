.class Lcom/magmamobile/mmusia/MCommon$1;
.super Ljava/lang/Object;
.source "MCommon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magmamobile/mmusia/MCommon;->showPrefs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$check:Landroid/widget/CheckBox;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/magmamobile/mmusia/MCommon$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/magmamobile/mmusia/MCommon$1;->val$check:Landroid/widget/CheckBox;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/magmamobile/mmusia/MCommon$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/magmamobile/mmusia/MCommon$1;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/magmamobile/mmusia/MCommon;->setPrefNotifStatus(Landroid/content/Context;Z)V

    .line 231
    iget-object v0, p0, Lcom/magmamobile/mmusia/MCommon$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/magmamobile/mmusia/MCommon$1;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/magmamobile/mmusia/MMUSIA;->activateNews(Landroid/content/Context;Z)V

    .line 232
    return-void
.end method
