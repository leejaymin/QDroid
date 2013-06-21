.class Ljiqqa/recipe/Main$4$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/Main$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljiqqa/recipe/Main$4;

.field private final synthetic val$mQuickAction:Ljiqqa/recipe/QuickAction;


# direct methods
.method constructor <init>(Ljiqqa/recipe/Main$4;Ljiqqa/recipe/QuickAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/Main$4$1;->this$1:Ljiqqa/recipe/Main$4;

    iput-object p2, p0, Ljiqqa/recipe/Main$4$1;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 228
    iget-object v0, p0, Ljiqqa/recipe/Main$4$1;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    invoke-virtual {v0}, Ljiqqa/recipe/QuickAction;->dismiss()V

    .line 229
    return-void
.end method
