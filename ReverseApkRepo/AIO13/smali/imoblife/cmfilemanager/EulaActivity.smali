.class public Limoblife/cmfilemanager/EulaActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/content/Intent;

.field f:Ljava/lang/String;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method final a(IZ)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-virtual {p0}, Limoblife/cmfilemanager/EulaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a()V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eula_accepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Limoblife/cmfilemanager/EulaActivity;->b()V

    return-void
.end method

.method final b()V
    .locals 3

    iget-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->e:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :goto_0
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/EulaActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/EulaActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Limoblife/cmfilemanager/EulaActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Limoblife/cmfilemanager/EulaActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method final c()V
    .locals 0

    invoke-virtual {p0}, Limoblife/cmfilemanager/EulaActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Limoblife/cmfilemanager/am;->e:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/EulaActivity;->setContentView(I)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/EulaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "org.openintents.extra.launch_activity_package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Limoblife/cmfilemanager/EulaActivity;->c:Ljava/lang/String;

    const-string v1, "org.openintents.extra.launch_activity_class"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Limoblife/cmfilemanager/EulaActivity;->d:Ljava/lang/String;

    const-string v1, "org.openintents.extra.launch_activity_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->e:Landroid/content/Intent;

    sget v0, Limoblife/cmfilemanager/al;->d:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->a:Landroid/widget/Button;

    new-instance v1, Limoblife/cmfilemanager/f;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/f;-><init>(Limoblife/cmfilemanager/EulaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/cmfilemanager/al;->e:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->b:Landroid/widget/Button;

    new-instance v1, Limoblife/cmfilemanager/g;

    invoke-direct {v1, p0}, Limoblife/cmfilemanager/g;-><init>(Limoblife/cmfilemanager/EulaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/cmfilemanager/al;->z:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->g:Landroid/widget/TextView;

    sget v0, Limoblife/cmfilemanager/al;->A:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->h:Landroid/widget/TextView;

    sget v0, Limoblife/cmfilemanager/al;->y:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->i:Landroid/widget/TextView;

    sget v0, Limoblife/cmfilemanager/al;->t:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->j:Landroid/widget/ImageView;

    invoke-static {p0}, Limoblife/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->f:Ljava/lang/String;

    invoke-static {p0}, Limoblife/a/c;->d(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Limoblife/cmfilemanager/EulaActivity;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Limoblife/cmfilemanager/EulaActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Limoblife/cmfilemanager/EulaActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v0, Limoblife/cmfilemanager/ao;->X:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Limoblife/cmfilemanager/EulaActivity;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Limoblife/cmfilemanager/EulaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Limoblife/cmfilemanager/ao;->W:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Limoblife/cmfilemanager/EulaActivity;->f:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Limoblife/cmfilemanager/EulaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Limoblife/cmfilemanager/EulaActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/cmfilemanager/EulaActivity;->i:Landroid/widget/TextView;

    sget v1, Limoblife/cmfilemanager/an;->a:I

    invoke-virtual {p0, v1, v4}, Limoblife/cmfilemanager/EulaActivity;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
