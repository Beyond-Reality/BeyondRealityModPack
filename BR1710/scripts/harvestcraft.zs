# Pam's Harvestcraft tweaks

// Ingredients
val toolPot = <ore:toolPot>;
val listAllwater = <ore:listallWater>;

// Foreign Items
val Salt = <gregtech:gt.metaitem.01:2817>;

// Remove salt crafting from water
recipes.removeShaped(Salt, [
  [toolPot * 0, listAllwater]
]);
