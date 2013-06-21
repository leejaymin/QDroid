.class Lcom/wareone/tappmt/TemplateEditor$5;
.super Ljava/lang/Object;
.source "TemplateEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TemplateEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TemplateEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TemplateEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TemplateEditor$5;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/TemplateEditor$5;)Lcom/wareone/tappmt/TemplateEditor;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/wareone/tappmt/TemplateEditor$5;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 237
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/wareone/tappmt/TemplateEditor$5;->this$0:Lcom/wareone/tappmt/TemplateEditor;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-static {}, Lcom/wareone/tappmt/TemplateEditor;->access$9()Ljava/util/List;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 239
    new-instance v2, Lcom/wareone/tappmt/TemplateEditor$5$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TemplateEditor$5$1;-><init>(Lcom/wareone/tappmt/TemplateEditor$5;)V

    .line 238
    invoke-virtual {v1, v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 252
    return-void
.end method
