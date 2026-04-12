; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz565ecju.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n0 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %temp = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n0) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %temp) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc195, %entry
  %z.0 = phi i32 [ 0, %entry ], [ %inc196, %for.inc195 ]
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.inc195 ]
  %0 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %z.0, %0
  br i1 %cmp, label %for.body, label %for.end197

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %1 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %i.0, %1
  br i1 %cmp2, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %j.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %j.0, %2
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  %inc13 = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond1
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc191, %for.end14
  %n.0 = phi i32 [ %1, %for.end14 ], [ %dec, %for.inc191 ]
  %min.1 = phi i32 [ %min.0, %for.end14 ], [ %min.5, %for.inc191 ]
  %s.0 = phi i32 [ 0, %for.end14 ], [ %add, %for.inc191 ]
  %cmp16 = icmp sgt i32 %n.0, 1
  br i1 %cmp16, label %for.body18, label %for.inc195

for.body18:                                       ; preds = %for.cond15
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc56, %for.body18
  %k.0 = phi i32 [ 0, %for.body18 ], [ %inc57, %for.inc56 ]
  %min.2 = phi i32 [ %min.1, %for.body18 ], [ %min.3, %for.inc56 ]
  %cmp20 = icmp slt i32 %k.0, %n.0
  br i1 %cmp20, label %for.body22, label %for.end58

for.body22:                                       ; preds = %for.cond19
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc41, %for.body22
  %l.0 = phi i32 [ 0, %for.body22 ], [ %inc42, %for.inc41 ]
  %min.3 = phi i32 [ %min.2, %for.body22 ], [ %min.4, %for.inc41 ]
  %cmp24 = icmp slt i32 %l.0, %n.0
  br i1 %cmp24, label %for.body26, label %for.end43

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i32 %l.0, 0
  %idxprom28 = sext i32 %k.0 to i64
  %idxprom30 = sext i32 %l.0 to i64
  %3 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom28
  %4 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 %idxprom30
  %5 = load i32, ptr %4, align 4, !tbaa !5, !invariant.load !13
  br i1 %cmp27, label %for.inc41, label %if.else

if.else:                                          ; preds = %for.body26
  %cmp36 = icmp sgt i32 %min.3, %5
  br i1 %cmp36, label %for.inc41, label %cond.false

cond.false:                                       ; preds = %if.else
  br label %for.inc41

for.inc41:                                        ; preds = %for.body26, %if.else, %cond.false
  %min.4 = phi i32 [ %5, %for.body26 ], [ %min.3, %cond.false ], [ %5, %if.else ]
  %inc42 = add nsw i32 %l.0, 1
  br label %for.cond23, !llvm.loop !14

for.end43:                                        ; preds = %for.cond23
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc53, %for.end43
  %l44.0 = phi i32 [ 0, %for.end43 ], [ %inc54, %for.inc53 ]
  %cmp46 = icmp slt i32 %l44.0, %n.0
  br i1 %cmp46, label %for.inc53, label %for.inc56

for.inc53:                                        ; preds = %for.cond45
  %idxprom49 = sext i32 %k.0 to i64
  %arrayidx50 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom49
  %idxprom51 = sext i32 %l44.0 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %6 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %6, %min.3
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %inc54 = add nsw i32 %l44.0, 1
  br label %for.cond45, !llvm.loop !15

for.inc56:                                        ; preds = %for.cond45
  %inc57 = add nsw i32 %k.0, 1
  br label %for.cond19, !llvm.loop !16

for.end58:                                        ; preds = %for.cond19
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc106, %for.end58
  %k59.0 = phi i32 [ 0, %for.end58 ], [ %inc107, %for.inc106 ]
  %min.5 = phi i32 [ %min.2, %for.end58 ], [ %min.6, %for.inc106 ]
  %cmp61 = icmp slt i32 %k59.0, %n.0
  br i1 %cmp61, label %for.body63, label %for.end108

for.body63:                                       ; preds = %for.cond60
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc90, %for.body63
  %l64.0 = phi i32 [ 0, %for.body63 ], [ %inc91, %for.inc90 ]
  %min.6 = phi i32 [ %min.5, %for.body63 ], [ %min.7, %for.inc90 ]
  %cmp66 = icmp slt i32 %l64.0, %n.0
  br i1 %cmp66, label %for.body68, label %for.end92

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i32 %l64.0, 0
  %idxprom71 = sext i32 %l64.0 to i64
  %idxprom73 = sext i32 %k59.0 to i64
  %7 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom71
  %8 = getelementptr inbounds [100 x i32], ptr %7, i64 0, i64 %idxprom73
  %9 = load i32, ptr %8, align 4, !tbaa !5, !invariant.load !13
  br i1 %cmp69, label %for.inc90, label %if.else75

if.else75:                                        ; preds = %for.body68
  %cmp80 = icmp sgt i32 %min.6, %9
  br i1 %cmp80, label %for.inc90, label %cond.false86

cond.false86:                                     ; preds = %if.else75
  br label %for.inc90

for.inc90:                                        ; preds = %for.body68, %if.else75, %cond.false86
  %min.7 = phi i32 [ %9, %for.body68 ], [ %min.6, %cond.false86 ], [ %9, %if.else75 ]
  %inc91 = add nsw i32 %l64.0, 1
  br label %for.cond65, !llvm.loop !17

for.end92:                                        ; preds = %for.cond65
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc103, %for.end92
  %l93.0 = phi i32 [ 0, %for.end92 ], [ %inc104, %for.inc103 ]
  %cmp95 = icmp slt i32 %l93.0, %n.0
  br i1 %cmp95, label %for.inc103, label %for.inc106

for.inc103:                                       ; preds = %for.cond94
  %idxprom98 = sext i32 %l93.0 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom98
  %idxprom100 = sext i32 %k59.0 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %10 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !13
  %sub102 = sub nsw i32 %10, %min.6
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %inc104 = add nsw i32 %l93.0, 1
  br label %for.cond94, !llvm.loop !18

for.inc106:                                       ; preds = %for.cond94
  %inc107 = add nsw i32 %k59.0, 1
  br label %for.cond60, !llvm.loop !19

for.end108:                                       ; preds = %for.cond60
  %arrayidx109 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx110 = getelementptr inbounds [100 x i32], ptr %arrayidx109, i64 0, i64 1
  %11 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  %add = add nsw i32 %s.0, %11
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc132, %for.end108
  %i111.0 = phi i32 [ 0, %for.end108 ], [ %inc133, %for.inc132 ]
  %cmp113 = icmp slt i32 %i111.0, %n.0
  br i1 %cmp113, label %for.body115, label %for.end134

for.body115:                                      ; preds = %for.cond112
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc129, %for.body115
  %j116.0 = phi i32 [ 0, %for.body115 ], [ %inc130, %for.inc129 ]
  %cmp118 = icmp slt i32 %j116.0, %n.0
  br i1 %cmp118, label %for.inc129, label %for.inc132

for.inc129:                                       ; preds = %for.cond117
  %idxprom121 = sext i32 %i111.0 to i64
  %arrayidx122 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom121
  %idxprom123 = sext i32 %j116.0 to i64
  %arrayidx124 = getelementptr inbounds [100 x i32], ptr %arrayidx122, i64 0, i64 %idxprom123
  %12 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !13
  %arrayidx126 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom121
  %arrayidx128 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom123
  store i32 %12, ptr %arrayidx128, align 4, !tbaa !5
  %inc130 = add nsw i32 %j116.0, 1
  br label %for.cond117, !llvm.loop !20

for.inc132:                                       ; preds = %for.cond117
  %inc133 = add nsw i32 %i111.0, 1
  br label %for.cond112, !llvm.loop !21

for.end134:                                       ; preds = %for.cond112
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc147, %for.end134
  %i135.0 = phi i32 [ 2, %for.end134 ], [ %inc148, %for.inc147 ]
  %cmp137 = icmp slt i32 %i135.0, %n.0
  br i1 %cmp137, label %for.inc147, label %for.end149

for.inc147:                                       ; preds = %for.cond136
  %idxprom140 = sext i32 %i135.0 to i64
  %arrayidx141 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom140
  %13 = load i32, ptr %arrayidx141, align 16, !tbaa !5, !invariant.load !13
  %sub143 = sub nsw i32 %i135.0, 1
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom144
  store i32 %13, ptr %arrayidx145, align 16, !tbaa !5
  %inc148 = add nsw i32 %i135.0, 1
  br label %for.cond136, !llvm.loop !22

for.end149:                                       ; preds = %for.cond136
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc162, %for.end149
  %i150.0 = phi i32 [ 2, %for.end149 ], [ %inc163, %for.inc162 ]
  %cmp152 = icmp slt i32 %i150.0, %n.0
  br i1 %cmp152, label %for.inc162, label %for.end164

for.inc162:                                       ; preds = %for.cond151
  %idxprom156 = sext i32 %i150.0 to i64
  %arrayidx157 = getelementptr inbounds [100 x i32], ptr %temp, i64 0, i64 %idxprom156
  %14 = load i32, ptr %arrayidx157, align 4, !tbaa !5, !invariant.load !13
  %sub159 = sub nsw i32 %i150.0, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom160
  store i32 %14, ptr %arrayidx161, align 4, !tbaa !5
  %inc163 = add nsw i32 %i150.0, 1
  br label %for.cond151, !llvm.loop !23

for.end164:                                       ; preds = %for.cond151
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc188, %for.end164
  %i165.0 = phi i32 [ 2, %for.end164 ], [ %inc189, %for.inc188 ]
  %cmp167 = icmp slt i32 %i165.0, %n.0
  br i1 %cmp167, label %for.body169, label %for.inc191

for.body169:                                      ; preds = %for.cond166
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc185, %for.body169
  %j170.0 = phi i32 [ 2, %for.body169 ], [ %inc186, %for.inc185 ]
  %cmp172 = icmp slt i32 %j170.0, %n.0
  br i1 %cmp172, label %for.inc185, label %for.inc188

for.inc185:                                       ; preds = %for.cond171
  %idxprom175 = sext i32 %i165.0 to i64
  %arrayidx176 = getelementptr inbounds [100 x [100 x i32]], ptr %temp, i64 0, i64 %idxprom175
  %idxprom177 = sext i32 %j170.0 to i64
  %arrayidx178 = getelementptr inbounds [100 x i32], ptr %arrayidx176, i64 0, i64 %idxprom177
  %15 = load i32, ptr %arrayidx178, align 4, !tbaa !5, !invariant.load !13
  %sub179 = sub nsw i32 %i165.0, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom180
  %sub182 = sub nsw i32 %j170.0, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds [100 x i32], ptr %arrayidx181, i64 0, i64 %idxprom183
  store i32 %15, ptr %arrayidx184, align 4, !tbaa !5
  %inc186 = add nsw i32 %j170.0, 1
  br label %for.cond171, !llvm.loop !24

for.inc188:                                       ; preds = %for.cond171
  %inc189 = add nsw i32 %i165.0, 1
  br label %for.cond166, !llvm.loop !25

for.inc191:                                       ; preds = %for.cond166
  %dec = add nsw i32 %n.0, -1
  br label %for.cond15, !llvm.loop !26

for.inc195:                                       ; preds = %for.cond15
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc196 = add nsw i32 %z.0, 1
  br label %for.cond, !llvm.loop !27

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %temp) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n0) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nofree willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
