.class Lcom/fleapapa/helper/ItemEdit$19;
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

.field private final synthetic val$dtime:[Ljava/lang/String;

.field private final synthetic val$tedit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;[Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$19;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemEdit$19;->val$dtime:[Ljava/lang/String;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemEdit$19;->val$tedit:Landroid/widget/EditText;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 436
    if-eqz p2, :cond_0

    .line 437
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$19;->val$dtime:[Ljava/lang/String;

    aget-object v0, v0, v5

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, hhmmss:[Ljava/lang/String;
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$19;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 439
    new-instance v2, Lcom/fleapapa/helper/ItemEdit$19$1;

    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$19;->val$dtime:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit$19;->val$tedit:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3, v4}, Lcom/fleapapa/helper/ItemEdit$19$1;-><init>(Lcom/fleapapa/helper/ItemEdit$19;[Ljava/lang/String;Landroid/widget/EditText;)V

    .line 445
    aget-object v3, v6, v7

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 446
    aget-object v4, v6, v5

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 438
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 448
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 452
    .end local v6           #hhmmss:[Ljava/lang/String;
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$19;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/ItemEdit$19;->val$dtime:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/ItemEdit$19;->val$tedit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    goto :goto_0
.end method
