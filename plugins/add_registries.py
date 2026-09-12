from beet import Context, JsonFile

class SlotSource(JsonFile):
    scope = ("slot_source",)
    extension = ".json"


def beet_default(ctx: Context):
    ctx.data.extend_namespace.append(SlotSource)