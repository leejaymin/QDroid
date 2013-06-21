.class Lexam/activity/CustomTab$1;
.super Ljava/lang/Object;
.source "CustomTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/activity/CustomTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/CustomTab;


# direct methods
.method constructor <init>(Lexam/activity/CustomTab;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/activity/CustomTab$1;->this$0:Lexam/activity/CustomTab;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lexam/activity/CustomTab$1;->this$0:Lexam/activity/CustomTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lexam/activity/CustomTab;->ChangePage(I)V

    goto :goto_0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lexam/activity/CustomTab$1;->this$0:Lexam/activity/CustomTab;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lexam/activity/CustomTab;->ChangePage(I)V

    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lexam/activity/CustomTab$1;->this$0:Lexam/activity/CustomTab;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lexam/activity/CustomTab;->ChangePage(I)V

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c000d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
