.class Lcom/fleapapa/helper/ItemEdit$11;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field private final synthetic val$dist:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$11;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemEdit$11;->val$dist:Landroid/widget/EditText;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 329
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$11;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$11;->val$dist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/fleapapa/helper/Item;->rdist:I

    :cond_0
    return-void
.end method
