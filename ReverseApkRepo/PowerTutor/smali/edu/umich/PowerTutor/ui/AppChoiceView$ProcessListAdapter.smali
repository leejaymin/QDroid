.class Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/AppChoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessListAdapter"
.end annotation


# instance fields
.field public Icon:Landroid/graphics/drawable/Drawable;

.field private LabelName:Ljava/lang/String;

.field private PackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;


# direct methods
.method public constructor <init>(Ledu/umich/PowerTutor/ui/AppChoiceView;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, arList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v0, 0x0

    .line 206
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 290
    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->PackageName:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->LabelName:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->mContext:Landroid/content/Context;

    .line 208
    iput-object p3, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->mList:Ljava/util/List;

    .line 209
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    iget-object v0, v0, Ledu/umich/PowerTutor/ui/AppChoiceView;->appList2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 221
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, sv:Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;
    const/4 v9, 0x0

    .line 231
    .local v9, appPackageInfo:Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 234
    .local v11, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v1, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->PackageName:Ljava/lang/String;

    .line 242
    :goto_0
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->PackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 249
    :goto_1
    if-nez v9, :cond_0

    iget v1, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-lez v1, :cond_0

    .line 252
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, subPackageName:[Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 256
    const/4 v8, 0x0

    .local v8, PackagePtr:I
    :goto_2
    array-length v1, v12

    if-lt v8, v1, :cond_2

    .line 269
    .end local v8           #PackagePtr:I
    .end local v12           #subPackageName:[Ljava/lang/String;
    :cond_0
    iget-object v1, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->LabelName:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    iget-object v2, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #calls: Ledu/umich/PowerTutor/ui/AppChoiceView;->resizeImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$1(Ledu/umich/PowerTutor/ui/AppChoiceView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->Icon:Landroid/graphics/drawable/Drawable;

    .line 274
    new-instance v0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;

    .end local v0           #sv:Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->Icon:Landroid/graphics/drawable/Drawable;

    iget v4, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v5, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v6, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->LabelName:Ljava/lang/String;

    move v7, p1

    invoke-direct/range {v0 .. v7}, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;-><init>(Ledu/umich/PowerTutor/ui/AppChoiceView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;IILjava/lang/String;I)V

    .line 285
    .restart local v0       #sv:Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;
    return-object v0

    .line 238
    :cond_1
    iget-object v1, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->PackageName:Ljava/lang/String;

    goto :goto_0

    .line 243
    :catch_0
    move-exception v10

    .line 245
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8       #PackagePtr:I
    .restart local v12       #subPackageName:[Ljava/lang/String;
    :cond_2
    aget-object v1, v12, v8

    if-nez v1, :cond_3

    .line 256
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 262
    :cond_3
    :try_start_1
    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessListAdapter;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    #getter for: Ledu/umich/PowerTutor/ui/AppChoiceView;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Ledu/umich/PowerTutor/ui/AppChoiceView;->access$0(Ledu/umich/PowerTutor/ui/AppChoiceView;)Landroid/content/pm/PackageManager;

    move-result-object v1

    aget-object v2, v12, v8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 263
    array-length v8, v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 264
    :catch_1
    move-exception v1

    goto :goto_3
.end method
