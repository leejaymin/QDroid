.class Lvn/esse/bodysymbol/HomeActivity$16;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;

.field private final synthetic val$out:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$16;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iput-object p2, p0, Lvn/esse/bodysymbol/HomeActivity$16;->val$out:Landroid/graphics/Bitmap;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 752
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$16;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$16;->val$out:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    #calls: Lvn/esse/bodysymbol/HomeActivity;->saveImage(Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, v1, v2}, Lvn/esse/bodysymbol/HomeActivity;->access$5(Lvn/esse/bodysymbol/HomeActivity;Landroid/graphics/Bitmap;Z)V

    .line 753
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$16;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->removeDialog(I)V

    .line 754
    return-void
.end method
