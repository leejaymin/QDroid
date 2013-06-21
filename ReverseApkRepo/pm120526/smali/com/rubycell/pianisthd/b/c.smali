.class public final Lcom/rubycell/pianisthd/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Landroid/content/Context;

.field c:I

.field d:Landroid/content/SharedPreferences$Editor;

.field e:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;ILandroid/content/SharedPreferences;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubycell/pianisthd/b/c;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/rubycell/pianisthd/b/c;->b:Landroid/content/Context;

    iput p3, p0, Lcom/rubycell/pianisthd/b/c;->c:I

    iput-object p4, p0, Lcom/rubycell/pianisthd/b/c;->e:Landroid/content/SharedPreferences;

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/b/c;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/rubycell/pianisthd/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/b;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/b/c;->e:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_HQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rubycell/pianisthd/b/c;->e:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/rubycell/pianisthd/b/c;->c:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "INSTRUMENT"

    sput v0, Lcom/rubycell/pianisthd/d/b;->r:I

    :goto_0
    iget-object v2, p0, Lcom/rubycell/pianisthd/b/c;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/rubycell/e/h;

    iget-object v1, p0, Lcom/rubycell/pianisthd/b/c;->b:Landroid/content/Context;

    iget v2, p0, Lcom/rubycell/pianisthd/b/c;->c:I

    invoke-direct {v0, v1, v2}, Lcom/rubycell/e/h;-><init>(Landroid/content/Context;I)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/e/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :pswitch_0
    const-string v1, "INSTRUMENT"

    sput v0, Lcom/rubycell/pianisthd/d/b;->r:I

    goto :goto_0

    :pswitch_1
    const-string v1, "INSTRUMENT_UP"

    sput v0, Lcom/rubycell/pianisthd/d/b;->s:I

    goto :goto_0

    :pswitch_2
    const-string v1, "INSTRUMENT_DOWN"

    sput v0, Lcom/rubycell/pianisthd/d/b;->t:I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rubycell/pianisthd/b/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "This instrument is not ativated. Do you want to active it ? "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/rubycell/pianisthd/b/d;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/b/d;-><init>(Lcom/rubycell/pianisthd/b/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/rubycell/pianisthd/b/e;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/b/e;-><init>(Lcom/rubycell/pianisthd/b/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
