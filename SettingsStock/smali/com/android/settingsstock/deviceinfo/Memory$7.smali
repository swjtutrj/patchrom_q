.class Lcom/android/settingsstock/deviceinfo/Memory$7;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingsstock/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/deviceinfo/Memory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/deviceinfo/Memory$7;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingsstock/deviceinfo/Memory$7;->this$0:Lcom/android/settingsstock/deviceinfo/Memory;

    #calls: Lcom/android/settingsstock/deviceinfo/Memory;->doMount()V
    invoke-static {v0}, Lcom/android/settingsstock/deviceinfo/Memory;->access$1000(Lcom/android/settingsstock/deviceinfo/Memory;)V

    return-void
.end method