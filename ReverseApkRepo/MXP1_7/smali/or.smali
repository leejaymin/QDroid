.class Lor;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final ㅼ꽑嫄:Lri;

.field private final 弱밧:I

.field final synthetic 癤욱븳援:Loj;

.field private final 궗:Landroid/content/Context;

.field private final 먯꽌:Loi;


# direct methods
.method constructor <init>(Loj;Landroid/content/Context;Loi;Lri;)V
    .locals 6

    const/4 v5, 0x0

    iput-object p1, p0, Lor;->癤욱븳援:Loj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lor;->궗:Landroid/content/Context;

    iput-object p3, p0, Lor;->먯꽌:Loi;

    iput-object p4, p0, Lor;->ㅼ꽑嫄:Lri;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnt;->lock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lnt;->kids_lock:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lnt;->touch_effects:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v1, v3, v5

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " (+"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p2, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "lock_mode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lor;->弱밧:I

    invoke-static {p1}, Loj;->癤욱븳援(Loj;)Lcom/mxtech/widget/Spinner2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mxtech/widget/Spinner2;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {p1}, Loj;->癤욱븳援(Loj;)Lcom/mxtech/widget/Spinner2;

    move-result-object v0

    iget v1, p0, Lor;->弱밧:I

    invoke-virtual {v0, v1}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    invoke-static {p1}, Loj;->癤욱븳援(Loj;)Lcom/mxtech/widget/Spinner2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mxtech/widget/Spinner2;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lor;->궗:Landroid/content/Context;

    invoke-static {v0}, Lfu;->癤욱븳援(Landroid/content/Context;)Lft;

    move-result-object v0

    const-string v1, "com.mxtech.kidslock"

    invoke-interface {v0, v1}, Lft;->癤욱븳援(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lor;->궗:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x1000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lor;->궗:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lor;->먯꽌:Loi;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lor;->먯꽌:Loi;

    invoke-interface {v1}, Loi;->癤욱븳援()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v1, p0, Lor;->궗:Landroid/content/Context;

    iget-object v2, p0, Lor;->ㅼ꽑嫄:Lri;

    invoke-interface {v2}, Lri;->덉쓣()Lfm;

    move-result-object v2

    iget-object v3, p0, Lor;->궗:Landroid/content/Context;

    sget v4, Lnt;->market_not_found:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lor;->궗:Landroid/content/Context;

    invoke-interface {v0, v7}, Lft;->癤욱븳援(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lor;->ㅼ꽑嫄:Lri;

    invoke-interface {v0}, Lri;->덉쓣()Lfm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lor;->癤욱븳援:Loj;

    iget-boolean v0, v0, Loj;->癤욱븳援:Z

    if-nez v0, :cond_1

    iget v0, p0, Lor;->弱밧:I

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lor;->癤욱븳援:Loj;

    iput-boolean v6, v0, Loj;->癤욱븳援:Z

    if-eq p3, v6, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lor;->궗:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.mxtech.kidslock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lor;->궗:Landroid/content/Context;

    sget v2, Lnt;->named_plugin:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lor;->궗:Landroid/content/Context;

    sget v5, Lnt;->kids_lock:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leo;->癤욱븳援(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lor;->궗:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lor;->궗:Landroid/content/Context;

    sget v3, Lnt;->install_component:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040013

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_3
    iget-object v1, p0, Lor;->ㅼ꽑嫄:Lri;

    invoke-interface {v1}, Lri;->留먰븷()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lee;->癤욱븳援(Landroid/view/Window;)V

    :cond_4
    iget-object v1, p0, Lor;->ㅼ꽑嫄:Lri;

    invoke-interface {v1}, Lri;->덉쓣()Lfm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
