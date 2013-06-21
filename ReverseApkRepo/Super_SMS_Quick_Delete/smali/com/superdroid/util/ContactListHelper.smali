.class public Lcom/superdroid/util/ContactListHelper;
.super Ljava/lang/Object;
.source "ContactListHelper.java"


# static fields
.field private static FIRST_LINE_ORDER:[I = null

.field public static final NAME_COLUMN_INDEX:I = 0x1

.field private static final NUMBER_COLUMN_INDEX:I = 0x2

.field private static final PROJECTION_LENGTH:I = 0x3

.field private static SECOND_LINE_ORDER:[I


# instance fields
.field private final _columnData:[Ljava/lang/String;

.field private final _context:Landroid/content/Context;

.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 13
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/superdroid/util/ContactListHelper;->FIRST_LINE_ORDER:[I

    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/superdroid/util/ContactListHelper;->SECOND_LINE_ORDER:[I

    .line 8
    return-void

    .line 13
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/superdroid/util/ContactListHelper;->displayName:Ljava/lang/String;

    .line 24
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/superdroid/util/ContactListHelper;->_columnData:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 28
    iput-object p1, p0, Lcom/superdroid/util/ContactListHelper;->_context:Landroid/content/Context;

    .line 30
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/superdroid/util/ContactListHelper;->_columnData:[Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSecondLineColumn()I
    .locals 5

    .prologue
    .line 55
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/superdroid/util/ContactListHelper;->SECOND_LINE_ORDER:[I

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 69
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 56
    :cond_0
    sget-object v4, Lcom/superdroid/util/ContactListHelper;->SECOND_LINE_ORDER:[I

    aget v1, v4, v2

    .line 57
    .local v1, column:I
    iget-object v4, p0, Lcom/superdroid/util/ContactListHelper;->_columnData:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    sget-object v4, Lcom/superdroid/util/ContactListHelper;->FIRST_LINE_ORDER:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 55
    .end local v3           #j:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .restart local v3       #j:I
    :cond_2
    sget-object v4, Lcom/superdroid/util/ContactListHelper;->FIRST_LINE_ORDER:[I

    aget v0, v4, v3

    .line 60
    .local v0, anotherColumn:I
    if-eq v1, v0, :cond_1

    .line 63
    iget-object v4, p0, Lcom/superdroid/util/ContactListHelper;->_columnData:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    .line 64
    goto :goto_1

    .line 58
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getFirstLine(I)Ljava/lang/String;
    .locals 1
    .parameter "unknownContact"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/superdroid/util/ContactListHelper;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/superdroid/util/ContactListHelper;->_context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/superdroid/util/ContactListHelper;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSecondLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/superdroid/util/ContactListHelper;->getSecondLineColumn()I

    move-result v0

    .line 43
    .local v0, column:I
    packed-switch v0, :pswitch_data_0

    .line 48
    const-string v1, ""

    .line 51
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 45
    .end local v1           #result:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/superdroid/util/ContactListHelper;->_columnData:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/superdroid/util/SuperUtil;->processCellphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
