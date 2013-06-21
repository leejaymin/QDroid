.class Lcom/ui/LapseIt/list/ListQuickAction$2;
.super Ljava/lang/Object;
.source "ListQuickAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/list/ListQuickAction;->createConfirmDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/list/ListQuickAction;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/list/ListQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/list/ListQuickAction$2;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 332
    packed-switch p2, :pswitch_data_0

    .line 343
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 344
    return-void

    .line 335
    :pswitch_0
    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction$2;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;
    invoke-static {v3}, Lcom/ui/LapseIt/list/ListQuickAction;->access$2(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Deleting project ..."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 337
    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction$2;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->c:Landroid/content/Context;
    invoke-static {v3}, Lcom/ui/LapseIt/list/ListQuickAction;->access$2(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 338
    .local v0, cResolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/ui/LapseIt/list/ListQuickAction$2;->this$0:Lcom/ui/LapseIt/list/ListQuickAction;

    #getter for: Lcom/ui/LapseIt/list/ListQuickAction;->mExtras:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/ui/LapseIt/list/ListQuickAction;->access$1(Lcom/ui/LapseIt/list/ListQuickAction;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 339
    .local v1, deleteId:J
    sget-object v3, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
