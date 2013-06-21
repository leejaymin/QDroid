.class public Lcom/fleapapa/helper/CallLogs$LogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallLogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LogAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/fleapapa/helper/CallLogs;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallLogs;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    .local p0, this:Lcom/fleapapa/helper/CallLogs$LogAdapter;,"Lcom/fleapapa/helper/CallLogs$LogAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    .line 149
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallLogs$LogAdapter;)Lcom/fleapapa/helper/CallLogs;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/fleapapa/helper/CallLogs$LogAdapter;,"Lcom/fleapapa/helper/CallLogs$LogAdapter<TT;>;"
    const v9, 0x7f08002d

    const v8, 0x7f080027

    const/4 v7, 0x0

    .line 152
    iget-object v1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v1, v1, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v1, p1}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallLogs$Clog;

    .line 153
    .local v0, log:Lcom/fleapapa/helper/CallLogs$Clog;
    iget-object v1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallLogs;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    .line 155
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallPapa$Call;->names(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v3, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-wide v3, v3, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    invoke-static {v2, v3, v4}, Lcom/fleapapa/util/MyUtil;->timeAgo(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v3, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-wide v3, v3, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    iget-object v5, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-wide v5, v5, Lcom/fleapapa/helper/CallPapa$Call;->btime:J

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/fleapapa/util/MyUtil;->timeLen(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    const v3, 0x7f0600f7

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallLogs;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v4, v4, Lcom/fleapapa/helper/CallPapa$Call;->nburst:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallLogs;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v3, v3, Lcom/fleapapa/helper/CallPapa$Call;->inbound:Z

    if-eqz v3, :cond_2

    const v3, 0x7f020031

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/fleapapa/helper/CallLogs$LogAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/fleapapa/helper/CallLogs$LogAdapter$1;-><init>(Lcom/fleapapa/helper/CallLogs$LogAdapter;Lcom/fleapapa/helper/CallLogs$Clog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v3, v3, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;-><init>(Lcom/fleapapa/helper/CallLogs$LogAdapter;Lcom/fleapapa/helper/CallLogs$Clog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, v0, Lcom/fleapapa/helper/CallLogs$Clog;->ll:Landroid/widget/LinearLayout;

    return-object v1

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;

    const v3, 0x7f0600e1

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallLogs;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 160
    :cond_2
    const v3, 0x7f020044

    goto :goto_1

    :cond_3
    move v2, v7

    .line 176
    goto :goto_2
.end method
