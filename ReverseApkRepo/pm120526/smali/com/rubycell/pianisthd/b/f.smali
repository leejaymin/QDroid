.class public final Lcom/rubycell/pianisthd/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Landroid/content/Context;

.field c:I

.field d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;ILandroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubycell/pianisthd/b/f;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/rubycell/pianisthd/b/f;->b:Landroid/content/Context;

    iput p3, p0, Lcom/rubycell/pianisthd/b/f;->c:I

    iput-object p4, p0, Lcom/rubycell/pianisthd/b/f;->d:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/b/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/b;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/b;->a()I

    move-result v0

    iget v1, p0, Lcom/rubycell/pianisthd/b/f;->c:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "INSTRUMENT"

    sput v0, Lcom/rubycell/pianisthd/d/b;->r:I

    :goto_0
    iget-object v2, p0, Lcom/rubycell/pianisthd/b/f;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/rubycell/e/m;

    iget-object v1, p0, Lcom/rubycell/pianisthd/b/f;->b:Landroid/content/Context;

    iget v2, p0, Lcom/rubycell/pianisthd/b/f;->c:I

    invoke-direct {v0, v1, v2}, Lcom/rubycell/e/m;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/e/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
