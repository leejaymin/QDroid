.class Lcom/rookiestudio/customize/ImageListPreference$1;
.super Ljava/lang/Object;
.source "ImageListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/customize/ImageListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/customize/ImageListPreference;


# direct methods
.method constructor <init>(Lcom/rookiestudio/customize/ImageListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/customize/ImageListPreference$1;->this$0:Lcom/rookiestudio/customize/ImageListPreference;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/rookiestudio/customize/ImageListPreference$1;->this$0:Lcom/rookiestudio/customize/ImageListPreference;

    #setter for: Lcom/rookiestudio/customize/ImageListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/rookiestudio/customize/ImageListPreference;->access$0(Lcom/rookiestudio/customize/ImageListPreference;I)V

    .line 120
    return-void
.end method
