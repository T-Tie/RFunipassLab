; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd7qcwv6o.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %num = alloca [10000 x i32], align 16
  %max = alloca i32, align 4
  %c = alloca [10000 x [6 x i8]], align 16
  %input = alloca [600 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %len) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %num) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %max) #6
  store i32 0, ptr %max, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 60000, ptr noundef nonnull align 16 dereferenceable(60000) %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 600, ptr noundef nonnull align 16 captures(none) dereferenceable(600) %input) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %len)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(600) %input, i64 noundef 600)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %call4 = call i64 @strlen(ptr noundef %input) #7
  %1 = load i32, ptr %len, align 4, !tbaa !5
  %conv5 = sext i32 %1 to i64
  %sub = sub i64 %call4, %conv5
  %cmp = icmp ule i64 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %2, %1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom13 = sext i32 %3 to i64
  br i1 %cmp7, label %for.inc, label %for.inc18

for.inc:                                          ; preds = %for.cond6
  %add = add nsw i32 %0, %2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [600 x i8], ptr %input, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %arrayidx10 = getelementptr inbounds [10000 x [6 x i8]], ptr %c, i64 0, i64 %idxprom13
  %idxprom11 = sext i32 %2 to i64
  %arrayidx12 = getelementptr inbounds [6 x i8], ptr %arrayidx10, i64 0, i64 %idxprom11
  store i8 %4, ptr %arrayidx12, align 1, !tbaa !9
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !11

for.inc18:                                        ; preds = %for.cond6
  %arrayidx14 = getelementptr inbounds [10000 x [6 x i8]], ptr %c, i64 0, i64 %idxprom13
  %arrayidx16 = getelementptr inbounds [6 x i8], ptr %arrayidx14, i64 0, i64 %conv5
  store i8 0, ptr %arrayidx16, align 1, !tbaa !9
  %inc17 = add nsw i32 %3, 1
  store i32 %inc17, ptr %n, align 4, !tbaa !5
  %inc19 = add nsw i32 %0, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end20:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc26, %for.end20
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %5, %6
  br i1 %cmp22, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond21
  %idxprom24 = sext i32 %5 to i64
  %arrayidx25 = getelementptr inbounds [10000 x i32], ptr %num, i64 0, i64 %idxprom24
  store i32 1, ptr %arrayidx25, align 4, !tbaa !5
  %inc27 = add nsw i32 %5, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !15

for.end28:                                        ; preds = %for.cond21
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc54, %for.end28
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %7, %6
  br i1 %cmp30, label %for.body31, label %for.end56

for.body31:                                       ; preds = %for.cond29
  store i32 %7, ptr %j, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc51, %for.body31
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %8, %6
  br i1 %cmp33, label %for.body34, label %for.inc54

for.body34:                                       ; preds = %for.cond32
  %idxprom35 = sext i32 %7 to i64
  %arrayidx36 = getelementptr inbounds [10000 x [6 x i8]], ptr %c, i64 0, i64 %idxprom35
  %idxprom38 = sext i32 %8 to i64
  %arrayidx39 = getelementptr inbounds [10000 x [6 x i8]], ptr %c, i64 0, i64 %idxprom38
  %call41 = call i32 @strcmp(ptr noundef readonly captures(none) %arrayidx36, ptr noundef readonly captures(none) %arrayidx39) #7
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %land.lhs.true, label %for.inc51

land.lhs.true:                                    ; preds = %for.body34
  %arrayidx44 = getelementptr inbounds [10000 x i32], ptr %num, i64 0, i64 %idxprom35
  %9 = load i32, ptr %arrayidx44, align 4, !tbaa !5, !invariant.load !10
  %cmp45 = icmp sgt i32 %9, 0
  br i1 %cmp45, label %if.then, label %for.inc51

if.then:                                          ; preds = %land.lhs.true
  %inc48 = add nsw i32 %9, 1
  store i32 %inc48, ptr %arrayidx44, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds [10000 x i32], ptr %num, i64 0, i64 %idxprom38
  %10 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !10
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %arrayidx50, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %for.body34, %land.lhs.true, %if.then
  %inc52 = add nsw i32 %8, 1
  store i32 %inc52, ptr %j, align 4, !tbaa !5
  br label %for.cond32, !llvm.loop !16

for.inc54:                                        ; preds = %for.cond32
  %inc55 = add nsw i32 %7, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !17

for.end56:                                        ; preds = %for.cond29
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc67, %for.end56
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp58 = icmp slt i32 %11, %6
  %12 = load i32, ptr %max, align 4, !tbaa !5
  br i1 %cmp58, label %for.body59, label %for.end69

for.body59:                                       ; preds = %for.cond57
  %idxprom60 = sext i32 %11 to i64
  %arrayidx61 = getelementptr inbounds [10000 x i32], ptr %num, i64 0, i64 %idxprom60
  %13 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !10
  %cmp62 = icmp sgt i32 %13, %12
  br i1 %cmp62, label %if.then63, label %for.inc67

if.then63:                                        ; preds = %for.body59
  store i32 %13, ptr %max, align 4, !tbaa !5
  br label %for.inc67

for.inc67:                                        ; preds = %for.body59, %if.then63
  %inc68 = add nsw i32 %11, 1
  store i32 %inc68, ptr %i, align 4, !tbaa !5
  br label %for.cond57, !llvm.loop !18

for.end69:                                        ; preds = %for.cond57
  %cmp70 = icmp eq i32 %12, 1
  br i1 %cmp70, label %if.then71, label %if.else

if.then71:                                        ; preds = %for.end69
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(3) @.str)
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call72, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end92

if.else:                                          ; preds = %for.end69
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %12)
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call74, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc89, %if.else
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %14, %6
  br i1 %cmp77, label %for.body78, label %if.end92

for.body78:                                       ; preds = %for.cond76
  %idxprom79 = sext i32 %14 to i64
  %arrayidx80 = getelementptr inbounds [10000 x i32], ptr %num, i64 0, i64 %idxprom79
  %15 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !10
  %cmp81 = icmp eq i32 %15, %12
  br i1 %cmp81, label %if.then82, label %for.inc89

if.then82:                                        ; preds = %for.body78
  %arrayidx84 = getelementptr inbounds [10000 x [6 x i8]], ptr %c, i64 0, i64 %idxprom79
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull %arrayidx84)
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call86, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc89

for.inc89:                                        ; preds = %for.body78, %if.then82
  %inc90 = add nsw i32 %14, 1
  store i32 %inc90, ptr %i, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !19

if.end92:                                         ; preds = %for.cond76, %if.then71
  call void @llvm.lifetime.end.p0(i64 noundef 600, ptr noundef %input) #8
  call void @llvm.lifetime.end.p0(i64 noundef 60000, ptr noundef %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %max) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %num) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %len) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
