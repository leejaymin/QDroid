.class Lcom/fleapapa/helper/ItemEdit$13;
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


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$13;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 343
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v2, "start Android photo picker activity"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, photoPickerIntent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$13;->this$0:Lcom/fleapapa/helper/ItemEdit;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/fleapapa/helper/ItemEdit;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    return-void
.end method
