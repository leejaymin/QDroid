.class public Lcom/fleapapa/helper/Interest;
.super Ljava/lang/Object;
.source "Interest.java"


# static fields
.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_BUY:I = 0xa

.field public static final TYPE_CONSUME:I = 0x2

.field public static final TYPE_POLL:I = 0x12

.field public static final TYPE_POST:I = 0x11

.field public static final TYPE_PROVIDE:I = 0x1

.field public static final TYPE_SELL:I = 0x9

.field public static final WHO:Ljava/lang/String; = "Interest"

.field static changed:Z

.field static initialized:Z

.field static interests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fleapapa/helper/Interest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field code:I

.field dist:I

.field keyw:Ljava/lang/String;

.field name:Ljava/lang/String;

.field price:F

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/fleapapa/helper/Interest;->initialize()Z

    move-result v0

    sput-boolean v0, Lcom/fleapapa/helper/Interest;->initialized:Z

    .line 8
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 5
    .parameter "code"
    .parameter "type"
    .parameter "dist"
    .parameter "keyw"

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v0

    .line 29
    .local v0, cat:Lcom/fleapapa/helper/Category;
    iput p1, p0, Lcom/fleapapa/helper/Interest;->code:I

    .line 30
    iput p2, p0, Lcom/fleapapa/helper/Interest;->type:I

    .line 31
    if-lez p3, :cond_0

    move v1, p3

    :goto_0
    iput v1, p0, Lcom/fleapapa/helper/Interest;->dist:I

    .line 32
    iput-object p4, p0, Lcom/fleapapa/helper/Interest;->keyw:Ljava/lang/String;

    .line 33
    if-nez v0, :cond_1

    const-string v1, "???"

    :goto_1
    iput-object v1, p0, Lcom/fleapapa/helper/Interest;->name:Ljava/lang/String;

    .line 34
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interest: new interest="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fleapapa/helper/Interest;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v1, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sput-boolean v4, Lcom/fleapapa/helper/Interest;->changed:Z

    .line 40
    :goto_2
    if-nez v0, :cond_2

    .line 42
    return-void

    .line 31
    :cond_0
    const/16 v1, 0x32

    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    goto :goto_1

    .line 41
    :cond_2
    iput-boolean v4, v0, Lcom/fleapapa/helper/Category;->interested:Z

    .line 40
    iget-object v0, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    goto :goto_2
.end method

.method static initialize()Z
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/16 v9, 0x10

    const/4 v8, 0x1

    .line 47
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    .line 48
    const-string v3, "interests"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, ints:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 61
    return v8

    .line 50
    :cond_0
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Interest.initialize: interest["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    aget-object v3, v1, v0

    const-string v4, ","

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, t:[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v11, :cond_2

    .line 49
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    aget-object v3, v2, v8

    invoke-static {v3, v9}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_1

    .line 54
    new-instance v3, Lcom/fleapapa/helper/Interest;

    .line 55
    aget-object v4, v2, v10

    invoke-static {v4, v9}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 56
    aget-object v5, v2, v8

    invoke-static {v5, v9}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 57
    const/4 v6, 0x2

    aget-object v6, v2, v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 58
    aget-object v7, v2, v11

    .line 54
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/fleapapa/helper/Interest;-><init>(IIILjava/lang/String;)V

    goto :goto_1
.end method

.method static match(II)Z
    .locals 2
    .parameter "type1"
    .parameter "type2"

    .prologue
    .line 44
    const/4 v0, 0x3

    or-int v1, p0, p1

    and-int/lit8 v1, v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static save()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 64
    sput-boolean v8, Lcom/fleapapa/helper/Interest;->changed:Z

    .line 65
    const-string v2, ""

    .line 66
    .local v2, ints:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 72
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "interests"

    aput-object v5, v4, v8

    aput-object v2, v4, v9

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 73
    return-void

    .line 67
    :cond_0
    sget-object v4, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Interest;

    .line 68
    .local v0, gi:Lcom/fleapapa/helper/Interest;
    const-string v4, "%x,%x,%d,%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Lcom/fleapapa/helper/Interest;->code:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, v0, Lcom/fleapapa/helper/Interest;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    iget v6, v0, Lcom/fleapapa/helper/Interest;->dist:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, v0, Lcom/fleapapa/helper/Interest;->keyw:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v7, ""

    :goto_1
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, s:Ljava/lang/String;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Interest.save: interest["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v4, ";"

    invoke-static {v2, v4, v3}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    iget-object v7, v0, Lcom/fleapapa/helper/Interest;->keyw:Ljava/lang/String;

    goto :goto_1
.end method

.method static typeOf(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_0

    .line 79
    and-int/lit8 v0, p0, 0x3

    packed-switch v0, :pswitch_data_1

    .line 81
    const v0, 0x7f08009a

    .line 82
    :goto_0
    return v0

    .line 76
    :pswitch_0
    const v0, 0x7f08009c

    goto :goto_0

    .line 77
    :pswitch_1
    const v0, 0x7f08009d

    goto :goto_0

    .line 82
    :pswitch_2
    const v0, 0x7f08009b

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 79
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch
.end method
