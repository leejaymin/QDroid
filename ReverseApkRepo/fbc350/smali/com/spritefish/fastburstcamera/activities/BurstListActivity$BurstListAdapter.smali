.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BurstListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/BurstListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BurstListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/spritefish/fastburstcamera/db/dao/Burst;",
        ">;"
    }
.end annotation


# instance fields
.field bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Burst;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;


# direct methods
.method public constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Burst;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p4, items:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Burst;>;"
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    .line 73
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    iput-object p4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->items:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v0, p2}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 76
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 80
    move-object v2, p2

    .line 81
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 84
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    check-cast v3, Landroid/view/LayoutInflater;

    .line 85
    .local v3, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f030006

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    .end local v3           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/db/dao/Burst;

    .line 90
    .local v1, o:Lcom/spritefish/fastburstcamera/db/dao/Burst;
    const v4, 0x7f0d0005

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->mBusy:Z
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 94
    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :goto_0
    if-eqz v1, :cond_1

    .line 101
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->mBusy:Z
    invoke-static {v5}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$BurstListAdapter;->bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    #calls: Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->updateRow(Landroid/view/View;Lcom/spritefish/fastburstcamera/db/dao/Burst;ZLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V
    invoke-static {v4, v2, v1, v5, v6}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->access$1(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Landroid/view/View;Lcom/spritefish/fastburstcamera/db/dao/Burst;ZLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V

    .line 102
    :cond_1
    return-object v2

    .line 96
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    invoke-virtual {v2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
