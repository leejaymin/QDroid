.class public Limoblife/toolbox/full/ui/AAbout;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AAbout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smsto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AAbout;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AAbout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Limoblife/toolbox/full/ui/AAbout;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Limoblife/toolbox/full/ui/d;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/d;-><init>(Limoblife/toolbox/full/ui/AAbout;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f070190

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f07018f

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07018e

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://mobi.downloadandroid.info/products.php"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=imoblife.toolbox.full"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Limoblife/toolbox/full/ui/b;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/b;-><init>(Limoblife/toolbox/full/ui/AAbout;)V

    new-instance v1, Limoblife/toolbox/full/ui/c;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/c;-><init>(Limoblife/toolbox/full/ui/AAbout;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070194

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070195

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070196

    invoke-virtual {p0, v5}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070197

    invoke-virtual {p0, v6}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "support@downloadandroid.info"

    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Limoblife/toolbox/full/ui/AAbout;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Limoblife/toolbox/full/ui/AWhitelist;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->i:Landroid/content/SharedPreferences;

    const-string v1, "mode_notification"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/f/a;->c()V

    invoke-static {p0}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/f/a;->e()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_notification"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->g:Landroid/widget/ImageView;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p0}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/f/a;->d()V

    invoke-static {p0}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/f/a;->f()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_notification"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->g:Landroid/widget/ImageView;

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->requestWindowFeature(I)Z

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->setContentView(I)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->i:Landroid/content/SharedPreferences;

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070193

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AAbout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/a;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/a;-><init>(Limoblife/toolbox/full/ui/AAbout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->g:Landroid/widget/ImageView;

    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAbout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->i:Landroid/content/SharedPreferences;

    const-string v1, "mode_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->g:Landroid/widget/ImageView;

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAbout;->g:Landroid/widget/ImageView;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
