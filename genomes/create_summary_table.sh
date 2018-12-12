#!/bin/bash
cat <(echo "#BUSCO") <(cat $(find ./ -name full_table* | head -n 1) | grep -v "#" | cut -f 1 | sort -n | uniq) > summary_temp.tsv


paste summary_temp.tsv <(cat <(cat <(echo "C.sinensis") <(for busco in $(cat ./C.sinensis/run_C_sinensis/full_table_C_sinensis.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./C.sinensis/run_C_sinensis/full_table_C_sinensis.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "E.granulosus") <(for busco in $(cat ./E.granulosus/run_E_granulosus/full_table_E_granulosus.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./E.granulosus/run_E_granulosus/full_table_E_granulosus.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "E.nipponicum") <(for busco in $(cat ./E.nipponicum/run_E_nipponium/full_table_E_nipponium.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./E.nipponicum/run_E_nipponium/full_table_E_nipponium.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "G.salaris") <(for busco in $(cat ./G.salaris/run_G_salaris/full_table_G_salaris.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./G.salaris/run_G_salaris/full_table_G_salaris.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "G.turnbulli") <(for busco in $(cat ./G.turnbulli/run_G_turnbulli/full_table_G_turnbulli.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./G.turnbulli/run_G_turnbulli/full_table_G_turnbulli.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "H.microstoma") <(for busco in $(cat ./H.microstoma/run_H_microstoma/full_table_H_microstoma.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./H.microstoma/run_H_microstoma/full_table_H_microstoma.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "M.lignano") <(for busco in $(cat ./M.lignano/run_M_lignano/full_table_M_lignano.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./M.lignano/run_M_lignano/full_table_M_lignano.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "O.viverrini") <(for busco in $(cat ./O.viverrini/run_O_viverrini/full_table_O_viverrini.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./O.viverrini/run_O_viverrini/full_table_O_viverrini.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "P.xenopodis") <(for busco in $(cat ./P.xenopodis/run_P_xenopodis/full_table_P_xenopodis.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./P.xenopodis/run_P_xenopodis/full_table_P_xenopodis.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "S.mansoni") <(for busco in $(cat ./S.mansoni/run_S_mansoni/full_table_S_mansoni.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./S.mansoni/run_S_mansoni/full_table_S_mansoni.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "S.mediterranea") <(for busco in $(cat ./S.mediterranea/run_S_mediterranea/full_table_S_mediterranea.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./S.mediterranea/run_S_mediterranea/full_table_S_mediterranea.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv
paste summary_temp.tsv <(cat <(cat <(echo "T.solium") <(for busco in $(cat ./T.solium/run_T_solium/full_table_T_solium.tsv | grep -v "#" | cut -f 1 | sort -n | uniq); do grep -P "$busco\t" ./T.solium/run_T_solium/full_table_T_solium.tsv | head -n 1; done | cut -f 2))) > summary.tsv; cp summary.tsv summary_temp.tsv


rm summary_temp.tsv
