.class final Lccc71/bmw/lib/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/x;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/widget/EditText;

.field private final synthetic d:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/x;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iput-object p2, p0, Lccc71/bmw/lib/y;->b:Ljava/lang/String;

    iput-object p3, p0, Lccc71/bmw/lib/y;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lccc71/bmw/lib/y;->d:Landroid/widget/EditText;

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 888
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->g(Lccc71/bmw/lib/bmw_calibration;)V

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cp /data/system/battery_stats.bin "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lccc71/bmw/lib/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v1, v1, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget v1, v1, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_battery_stats.bin\nrm /data/system/battery_stats.bin\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    new-instance v1, Lccc71/utils/ai;

    invoke-direct {v1, v0, v3}, Lccc71/utils/ai;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 898
    new-instance v0, Lccc71/bmw/data/a/a;

    invoke-direct {v0}, Lccc71/bmw/data/a/a;-><init>()V

    .line 899
    iget-object v1, p0, Lccc71/bmw/lib/y;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    .line 903
    :try_start_0
    iget-object v1, p0, Lccc71/bmw/lib/y;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lccc71/bmw/data/a/a;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :goto_0
    iget v1, v0, Lccc71/bmw/data/a/a;->c:I

    iput v1, v0, Lccc71/bmw/data/a/a;->k:I

    .line 910
    iget-object v1, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v1, v1, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    invoke-static {}, Lccc71/bmw/lib/bmw_calibration;->b()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lccc71/bmw/data/a/a;->q:Ljava/util/Date;

    .line 914
    new-instance v1, Lccc71/bmw/data/a/b;

    iget-object v2, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v2, v2, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v2}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v2

    invoke-direct {v1, v2}, Lccc71/bmw/data/a/b;-><init>(Landroid/content/Context;)V

    .line 915
    invoke-virtual {v1}, Lccc71/bmw/data/a/b;->a()V

    .line 916
    invoke-virtual {v1, v0}, Lccc71/bmw/data/a/b;->a(Lccc71/bmw/data/a/a;)Lccc71/bmw/data/a/a;

    move-result-object v2

    .line 917
    iget v0, v2, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v1, v0}, Lccc71/bmw/data/a/b;->a(I)V

    .line 918
    invoke-virtual {v1}, Lccc71/bmw/data/a/b;->b()V

    .line 922
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0, v3}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;

    .line 925
    :cond_0
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget v1, v2, Lccc71/bmw/data/a/a;->c:I

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/content/Context;I)V

    .line 930
    :goto_1
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/d;->dl:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 931
    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_calibration;->a(Lccc71/bmw/lib/bmw_calibration;Lccc71/bmw/data/a/a;)V

    .line 934
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->h(Lccc71/bmw/lib/bmw_calibration;)V

    .line 936
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v1, v1, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget-object v1, v1, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    const v2, -0x55555501

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 939
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->a(Lccc71/bmw/lib/bmw_calibration;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lccc71/bmw/lib/bmw_calibration;->a()I

    move-result v1

    invoke-static {}, Lccc71/bmw/lib/bmw_calibration;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 940
    return-void

    .line 907
    :catch_0
    move-exception v1

    const/16 v1, 0x5dc

    iput v1, v0, Lccc71/bmw/data/a/a;->c:I

    goto/16 :goto_0

    .line 928
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/y;->a:Lccc71/bmw/lib/x;

    iget-object v0, v0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget v1, v2, Lccc71/bmw/data/a/a;->c:I

    neg-int v1, v1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method
