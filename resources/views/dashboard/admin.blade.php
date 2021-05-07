<div class="w-full block mt-8">
    <div class="flex flex-wrap sm:flex-no-wrap justify-between">
        <div class="w-full bg-green-300 text-center border border-gray-300 px-8 py-6 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl">{{ sprintf("%02d", count($parents)) }}</span>
             <a href="/parents" class="href"><span class="leading-tight">Parents</span></a>
            </h3>
        </div>
        <div class="w-full bg-green-300 text-center border border-gray-300 px-8 py-6 mx-0 sm:mx-6 my-4 sm:my-0 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl">{{ sprintf("%02d", count($teachers)) }}</span>
             <a href="/teacher" class="href"><span class="leading-tight">Lecturers</span></a>
            </h3>
        </div>
        <div class="w-full bg-green-300 text-center border border-gray-300 px-8 py-6 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl">{{ sprintf("%02d", count($students)) }}</span>
             <a href="/student" class="href"><span class="leading-tight">Students</span></a>
            </h3>
        </div>
    </div>

</div>
<div class="w-full block mt-8">
    <div class="flex flex-wrap sm:flex-no-wrap justify-between">
        <div class="w-full bg-green-300 text-center border border-gray-300 px-8 py-6 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl">{{ sprintf("%02d", \App\Grade::all()->count())}}</span>
             <a href="/classes" class="href"><span class="leading-tight">Classes</span></a>
            </h3>
        </div>
        <div class="w-full bg-green-300 text-center border border-gray-300 px-8 py-6 mx-0 sm:mx-6 my-4 sm:my-0 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl">{{ sprintf("%02d", \App\Subject::all()->count())}}</span>
             <a href="/subject" class="href"><span class="leading-tight">Subjects</span></a>
            </h3>
        </div>
        <div class="w-full bg-green-300 text-center border border-gray-300 px-8 py-6 rounded">
            <h3 class="text-gray-700 uppercase font-bold">
                <span class="text-4xl">{{ sprintf("%02d", \App\Attendance::all()->count())}}</span>
             <a href="/attendance" class="href"><span class="leading-tight">Attendance</span></a>
            </h3>
        </div>
    </div>

</div>




