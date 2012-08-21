.class Ledu/umich/PowerTutor/ui/AppChoiceView$MyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/AppChoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;


# direct methods
.method public constructor <init>(Ledu/umich/PowerTutor/ui/AppChoiceView;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "items"

    .prologue
    .line 119
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$MyAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    .line 120
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 122
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 129
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$MyAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    invoke-virtual {v6}, Ledu/umich/PowerTutor/ui/AppChoiceView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 132
    .local v5, row:Landroid/view/View;
    invoke-virtual {p0, p1}, Ledu/umich/PowerTutor/ui/AppChoiceView$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 135
    .local v4, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const v6, 0x7f08000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 134
    check-cast v2, Landroid/widget/TextView;

    .line 137
    .local v2, PidTextView:Landroid/widget/TextView;
    const v6, 0x7f08000d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, ApplciationNameTextView:Landroid/widget/TextView;
    const v6, 0x7f08000c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 138
    check-cast v1, Landroid/widget/ImageView;

    .line 141
    .local v1, IconTextView:Landroid/widget/ImageView;
    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :try_start_0
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$MyAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView;)Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 145
    iget-object v7, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$MyAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView;)Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 146
    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 144
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-object v5

    .line 147
    :catch_0
    move-exception v3

    .line 149
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
