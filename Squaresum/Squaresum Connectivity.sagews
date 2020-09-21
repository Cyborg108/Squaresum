︠5362889e-4d08-403b-9e8b-12f6fa199ce8︠
sage_server.MAX_OUTPUT_MESSAGES = 10000
sage_server.MAX_OUTPUT = 100000000

def is_square(apositiveint):
  x = apositiveint // 2
  seen = set([x])
  while x * x != apositiveint:
    x = (x + (apositiveint // x)) // 2
    if x in seen: return False
    seen.add(x)
  return True
G = graphs.EmptyGraph()
G.add_vertex(1)
for k in range (2,35):
    G.add_vertex(k)
    for i in range(1,k):
        if is_square(i+k):
            G.add_edge(i,k)
    #G.show()
    print str(k) + " " + str(G.is_connected()) + " " + str(G.hamiltonian_path() != None) + " " + str(G.is_hamiltonian())
︡6408b7c4-8682-4116-82bc-3f1a362e2c45︡{"stdout":"2 False False False\n3 False False False\n4 False False False\n5 False False False\n6 False False False\n7 False False False\n8 False False False\n9 False False False\n10 False False False\n11 False False False\n12 False False False\n13 False False False\n14 True False False\n15 True True False"}︡{"stdout":"\n16 True True False\n17 True True False\n18 True False False\n19 True False False\n20 True False False\n21 True False False\n22 True False False\n23 True True False\n24 True False False\n25 True True False\n26 True True False\n27 True True False\n28 True True False\n29 True True False\n30 True True False\n31 True True False\n32 True True True\n33 True True True\n34 True True True"}︡{"stdout":"\n"}︡{"done":true}
︠529e5b37-278b-4718-a5a5-554f0f708ca8s︠
G.show()
︡7930f95e-bf64-42c6-8129-b8ab698431d0︡{"file":{"filename":"/home/user/.sage/temp/project-d9ba21d4-2c30-4473-be51-9c3db82ad76f/95/tmp_BVSDNd.svg","show":true,"text":null,"uuid":"e3efeefd-d52e-46d4-9e12-8d6e4df107ee"},"once":false}︡{"done":true}











