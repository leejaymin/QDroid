.class final Lccc71/bmw/lib/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/w;

.field private final synthetic b:I

.field private final synthetic c:[Lccc71/bmw/data/a/a;

.field private final synthetic d:Lccc71/bmw/data/a/b;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/w;I[Lccc71/bmw/data/a/a;Lccc71/bmw/data/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    iput p2, p0, Lccc71/bmw/lib/x;->b:I

    iput-object p3, p0, Lccc71/bmw/lib/x;->c:[Lccc71/bmw/data/a/a;

    iput-object p4, p0, Lccc71/bmw/lib/x;->d:Lccc71/bmw/data/a/b;

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/bmw/lib/bmw_calibration;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/battery_stats/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 811
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 813
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 815
    :cond_0
    if-ltz p2, :cond_5

    iget v0, p0, Lccc71/bmw/lib/x;->b:I

    if-ge p2, v0, :cond_5

    .line 819
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->g(Lccc71/bmw/lib/bmw_calibration;)V

    .line 821
    iget-object v0, p0, Lccc71/bmw/lib/x;->c:[Lccc71/bmw/data/a/a;

    aget-object v1, v0, p2

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cp /data/system/batterystats.bin "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v3}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v3

    invoke-static {v3}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v3

    iget v3, v3, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_batterystats.bin\ncp "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 826
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_batterystats.bin /data/system/batterystats.bin\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    new-instance v2, Lccc71/utils/ai;

    invoke-direct {v2, v0, v6}, Lccc71/utils/ai;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 831
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 832
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget-object v2, v1, Lccc71/bmw/data/a/a;->n:Lccc71/bmw/data/a;

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_watcher;->a(Landroid/content/Context;Lccc71/bmw/data/a;)Lccc71/bmw/data/a;

    .line 833
    :cond_1
    iget v0, v1, Lccc71/bmw/data/a/a;->k:I

    if-nez v0, :cond_2

    .line 834
    iget v0, v1, Lccc71/bmw/data/a/a;->c:I

    iput v0, v1, Lccc71/bmw/data/a/a;->k:I

    .line 835
    :cond_2
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 836
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget v2, v1, Lccc71/bmw/data/a/a;->k:I

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_settings;->d(Landroid/content/Context;I)V

    .line 840
    :goto_0
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    sget v2, Lccc71/bmw/lib/d;->dl:I

    invoke-virtual {v0, v2}, Lccc71/bmw/lib/bmw_calibration;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 841
    sget v2, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v0, p0, Lccc71/bmw/lib/x;->d:Lccc71/bmw/data/a/b;

    iget v2, v1, Lccc71/bmw/data/a/a;->a:I

    invoke-virtual {v0, v2}, Lccc71/bmw/data/a/b;->a(I)V

    .line 844
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_calibration;->a(Lccc71/bmw/lib/bmw_calibration;Lccc71/bmw/data/a/a;)V

    .line 845
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    invoke-static {}, Lccc71/bmw/lib/bmw_calibration;->b()Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lccc71/bmw/data/a/a;->q:Ljava/util/Date;

    .line 846
    iget-object v0, p0, Lccc71/bmw/lib/x;->d:Lccc71/bmw/data/a/b;

    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->a()V

    .line 847
    iget-object v0, p0, Lccc71/bmw/lib/x;->d:Lccc71/bmw/data/a/b;

    iget-object v1, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/bmw/data/a/b;->b(Lccc71/bmw/data/a/a;)V

    .line 848
    iget-object v0, p0, Lccc71/bmw/lib/x;->d:Lccc71/bmw/data/a/b;

    invoke-virtual {v0}, Lccc71/bmw/data/a/b;->b()V

    .line 850
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->h(Lccc71/bmw/lib/bmw_calibration;)V

    .line 852
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->M(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-static {v1}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v1

    iget-object v1, v1, Lccc71/bmw/data/a/a;->b:Ljava/lang/String;

    const v2, -0x55555501

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 855
    :cond_3
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

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

    .line 953
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 954
    return-void

    .line 838
    :cond_4
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    iget v2, v1, Lccc71/bmw/data/a/a;->k:I

    neg-int v2, v2

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_settings;->e(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 859
    :cond_5
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-static {v0}, Lccc71/utils/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccc71/bmw/lib/x;->c:[Lccc71/bmw/data/a/a;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 863
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 864
    iget-object v1, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    const-string v2, "ccc71.bmw.bmw_export_ads"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    iget-object v1, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v1}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/bmw/lib/bmw_calibration;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 867
    :catch_0
    move-exception v0

    goto :goto_1

    .line 875
    :cond_6
    iget-object v0, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v0}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_calibration;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/e;->aZ:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 876
    sget v0, Lccc71/bmw/lib/d;->bo:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 877
    sget v1, Lccc71/bmw/lib/d;->aZ:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 878
    sget v4, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 880
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lccc71/bmw/lib/x;->a:Lccc71/bmw/lib/w;

    invoke-static {v5}, Lccc71/bmw/lib/w;->a(Lccc71/bmw/lib/w;)Lccc71/bmw/lib/bmw_calibration;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lccc71/bmw/lib/g;->bB:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 881
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lccc71/bmw/lib/y;

    invoke-direct {v5, p0, v2, v0, v1}, Lccc71/bmw/lib/y;-><init>(Lccc71/bmw/lib/x;Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 941
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 943
    new-instance v1, Lccc71/bmw/lib/z;

    invoke-direct {v1, p0, v0}, Lccc71/bmw/lib/z;-><init>(Lccc71/bmw/lib/x;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method
