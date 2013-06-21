.class Lvn/esse/bodysymbol/HomeActivity$6;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lnet/londatiga/android/QuickAction$OnActionItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lnet/londatiga/android/QuickAction;II)V
    .locals 3
    .parameter "source"
    .parameter "pos"
    .parameter "actionId"

    .prologue
    .line 306
    packed-switch p3, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v1, v1, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    #calls: Lvn/esse/bodysymbol/HomeActivity;->performClick(I)V
    invoke-static {v0, v1}, Lvn/esse/bodysymbol/HomeActivity;->access$2(Lvn/esse/bodysymbol/HomeActivity;I)V

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v1, v1, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lvn/esse/bodysymbol/HomeActivity;->rotateItem(II)V

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v1, v1, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Lvn/esse/bodysymbol/HomeActivity;->rotateItem(II)V

    goto :goto_0

    .line 318
    :pswitch_3
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v1, v1, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lvn/esse/bodysymbol/HomeActivity;->flipItem(IZ)V

    goto :goto_0

    .line 321
    :pswitch_4
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v1, p0, Lvn/esse/bodysymbol/HomeActivity$6;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v1, v1, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvn/esse/bodysymbol/HomeActivity;->flipItem(IZ)V

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
