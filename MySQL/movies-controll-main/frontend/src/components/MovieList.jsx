import { useEffect, useState } from 'react';

const MovieList = () => {

    const [movies_series, setMovies] = useState([])
    
    useEffect(async () => {
        const url = "http://localhost:5000/movies_series";
        const res = await fetch(url);
        setMovies(await res.json());
    }, [])
    
    return(
            <table className="striped">
                <thead>
                <tr>
                    <th>Nome</th>
                    <th>Tipo</th>
                    <th>Episódios</th>
                    <th>Episódio atual</th>
                    <th>Visto por último</th>
                </tr>
                </thead>

                <tbody>
                {movies_series.map(movies_series => {
                    let type = movies_series.type === 0 ? 'Série' : 'Filme';
                    let formatDate = (movies_series.last_view).split('T', 1)

                    return(
                        <tr key={movies_series.id}>
                            <td>{movies_series.name}</td>
                            <td>{type}</td>
                            <td>{movies_series.total_ep}</td>
                            <td>{movies_series.atual_ep}</td>
                            <td>{formatDate}</td>
                        </tr>
                    )
                })}
                </tbody>
            </table>
    )
}

export default MovieList;
