.class Lvn/esse/bodysymbol/HomeActivity$21;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity;->loadAllImgViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;

.field private final synthetic val$tmp_index:I


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$21;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iput p2, p0, Lvn/esse/bodysymbol/HomeActivity$21;->val$tmp_index:I

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1219
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$21;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v1, p0, Lvn/esse/bodysymbol/HomeActivity$21;->val$tmp_index:I

    iput v1, v0, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    .line 1220
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$21;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->clickItemQuickAction:Lnet/londatiga/android/QuickAction;

    invoke-virtual {v0, p1}, Lnet/londatiga/android/QuickAction;->show(Landroid/view/View;)V

    .line 1222
    return-void
.end method
