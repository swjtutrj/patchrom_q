.class Lcom/android/settingsstock/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingsstock/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingsstock/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/settingsstock/MasterClearConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingsstock/MasterClearConfirm$1;->this$0:Lcom/android/settingsstock/MasterClearConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/settingsstock/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingsstock/MasterClearConfirm$1;->this$0:Lcom/android/settingsstock/MasterClearConfirm;

    #getter for: Lcom/android/settingsstock/MasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v1}, Lcom/android/settingsstock/MasterClearConfirm;->access$000(Lcom/android/settingsstock/MasterClearConfirm;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingsstock/MasterClearConfirm$1;->this$0:Lcom/android/settingsstock/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settingsstock/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingsstock/MasterClearConfirm$1;->this$0:Lcom/android/settingsstock/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settingsstock/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
