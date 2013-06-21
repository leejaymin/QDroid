.class Lexam/Widget/ImageButtonTest$1;
.super Ljava/lang/Object;
.source "ImageButtonTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Widget/ImageButtonTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/ImageButtonTest;


# direct methods
.method constructor <init>(Lexam/Widget/ImageButtonTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/ImageButtonTest$1;->this$0:Lexam/Widget/ImageButtonTest;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 17
    iget-object v0, p0, Lexam/Widget/ImageButtonTest$1;->this$0:Lexam/Widget/ImageButtonTest;

    const-string v1, "Image Button Clicked"

    .line 18
    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 19
    return-void
.end method
