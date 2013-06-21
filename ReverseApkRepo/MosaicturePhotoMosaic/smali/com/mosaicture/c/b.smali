.class public final Lcom/mosaicture/c/b;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TB_BASE_IMAGE"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mosaicture/c/b;->a:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/mosaicture/c/b;->b:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "CREATE TABLE TB_BASE_IMAGE (CD_BASE_IMAGE INTEGER PRIMARY KEY AUTOINCREMENT, DC_PATH TEXT,ID_CHECKED INTEGER,NM_RED_1 INTEGER,NM_RED_2 INTEGER,NM_RED_3 INTEGER,NM_RED_4 INTEGER,NM_RED_5 INTEGER,NM_RED_6 INTEGER,NM_RED_7 INTEGER,NM_RED_8 INTEGER,NM_RED_9 INTEGER,NM_GREEN_1 INTEGER,NM_GREEN_2 INTEGER,NM_GREEN_3 INTEGER,NM_GREEN_4 INTEGER,NM_GREEN_5 INTEGER,NM_GREEN_6 INTEGER,NM_GREEN_7 INTEGER,NM_GREEN_8 INTEGER,NM_GREEN_9 INTEGER,NM_BLUE_1 INTEGER,NM_BLUE_2 INTEGER,NM_BLUE_3 INTEGER,NM_BLUE_4 INTEGER,NM_BLUE_5 INTEGER,NM_BLUE_6 INTEGER,NM_BLUE_7 INTEGER,NM_BLUE_8 INTEGER,NM_BLUE_9 INTEGER, NM_ANDROID_IMAGE_ID INTEGER );"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mosaicture/c/b;->c:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/mosaicture/c/b;->d:[Ljava/lang/String;

    return-void
.end method
