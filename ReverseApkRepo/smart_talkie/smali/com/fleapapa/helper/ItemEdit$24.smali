.class Lcom/fleapapa/helper/ItemEdit$24;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit;->prompt()V
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$24;->this$0:Lcom/fleapapa/helper/ItemEdit;

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$24;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemEdit;->save()V

    .line 684
    return-void
.end method
