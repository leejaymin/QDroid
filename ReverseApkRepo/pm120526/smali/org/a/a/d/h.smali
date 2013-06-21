.class final Lorg/a/a/d/h;
.super Lorg/a/a/d/g;


# instance fields
.field protected final d:I


# direct methods
.method protected constructor <init>(Lorg/a/a/d;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/d/g;-><init>(Lorg/a/a/d;IZ)V

    iput p4, p0, Lorg/a/a/d/h;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/a/a/d/h;->b:I

    return v0
.end method

.method public final a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/a/a/d/h;->a:Lorg/a/a/d;

    invoke-virtual {v0, p4}, Lorg/a/a/d;->a(Lorg/a/a/a;)Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/a/a/c;->a(J)I

    move-result v0

    iget v1, p0, Lorg/a/a/d/h;->d:I

    invoke-static {p1, v0, v1}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget v0, p0, Lorg/a/a/d/h;->d:I

    invoke-static {p1, v0}, Lorg/a/a/d/c;->a(Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method
