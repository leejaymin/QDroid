.class Lorg/connectbot/ConsoleActivity$16;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ConsoleActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/ConsoleActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$16;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 719
    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$16;->this$0:Lorg/connectbot/ConsoleActivity;

    const v6, 0x7f0b0004

    invoke-virtual {v5, v6}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/connectbot/TerminalView;

    .line 721
    .local v0, terminalView:Lorg/connectbot/TerminalView;
    iget-object v5, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v5}, Lorg/connectbot/service/TerminalBridge;->scanForURLs()Ljava/util/List;

    move-result-object v4

    .line 723
    .local v4, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/app/Dialog;

    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$16;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-direct {v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 724
    .local v1, urlDialog:Landroid/app/Dialog;
    const v5, 0x7f08008e

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 726
    new-instance v2, Landroid/widget/ListView;

    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$16;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-direct {v2, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 727
    .local v2, urlListView:Landroid/widget/ListView;
    new-instance v3, Lorg/connectbot/ConsoleActivity$URLItemListener;

    iget-object v5, p0, Lorg/connectbot/ConsoleActivity$16;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$16;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-direct {v3, v5, v6}, Lorg/connectbot/ConsoleActivity$URLItemListener;-><init>(Lorg/connectbot/ConsoleActivity;Landroid/content/Context;)V

    .line 728
    .local v3, urlListener:Lorg/connectbot/ConsoleActivity$URLItemListener;
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 730
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lorg/connectbot/ConsoleActivity$16;->this$0:Lorg/connectbot/ConsoleActivity;

    const v7, 0x1090003

    invoke-direct {v5, v6, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 731
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 732
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 734
    const/4 v5, 0x1

    return v5
.end method
