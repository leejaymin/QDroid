.class Lcom/fleapapa/helper/ItemEdit$14;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit;->edit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemEdit;

.field private final synthetic val$detail:Landroid/widget/EditText;

.field private final synthetic val$pbut:Landroid/widget/Button;

.field private final synthetic val$title:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemEdit$14;->val$detail:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemEdit$14;->val$title:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemEdit$14;->val$pbut:Landroid/widget/Button;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 353
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-boolean v4, v4, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v3, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v4, :cond_1

    .line 354
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$14;->val$detail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 369
    :goto_1
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$14;->val$pbut:Landroid/widget/Button;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-boolean v4, v4, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v4, :cond_2

    const v4, 0x7f06004e

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 370
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v3}, Lcom/fleapapa/helper/ItemEdit;->setVisuals()V

    .line 371
    return-void

    .line 353
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit$14;->val$title:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    .line 358
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit$14;->val$detail:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    .line 364
    const-string v3, "<img\\s+src=\'(/[0-9a-f]+_[0-9a-f]+-\\.[^\']*)\'"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 365
    .local v2, pattern:Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 366
    .local v1, matcher:Ljava/util/regex/Matcher;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "<img src=\'http://"

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fleapapa/helper/Flea;->fleas:Ljava/util/ArrayList;

    sget v5, Lcom/fleapapa/helper/Flea;->cfsi:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$1\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, body:Ljava/lang/String;
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v4, v4, Lcom/fleapapa/helper/ItemEdit;->preview:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemEdit$14;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v5, v5, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v5, v5, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    invoke-static {v3, v4, v5, v0}, Lcom/fleapapa/util/MyUtil;->preview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 369
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .end local v2           #pattern:Ljava/util/regex/Pattern;
    :cond_2
    const v4, 0x7f06004f

    goto :goto_2
.end method
