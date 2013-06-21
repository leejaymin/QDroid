.class Lwebtech/dontforgetme/dontforgetme$1;
.super Ljava/lang/Object;
.source "dontforgetme.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebtech/dontforgetme/dontforgetme;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwebtech/dontforgetme/dontforgetme;


# direct methods
.method constructor <init>(Lwebtech/dontforgetme/dontforgetme;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lwebtech/dontforgetme/dontforgetme$1;->this$0:Lwebtech/dontforgetme/dontforgetme;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    .line 104
    .local v1, itemLayout:Landroid/widget/LinearLayout;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, itemTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lwebtech/dontforgetme/dontforgetme$1;->this$0:Lwebtech/dontforgetme/dontforgetme;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    #calls: Lwebtech/dontforgetme/dontforgetme;->openContact(Ljava/lang/String;)V
    invoke-static {v3, p0}, Lwebtech/dontforgetme/dontforgetme;->access$0(Lwebtech/dontforgetme/dontforgetme;Ljava/lang/String;)V

    .line 106
    return-void
.end method
